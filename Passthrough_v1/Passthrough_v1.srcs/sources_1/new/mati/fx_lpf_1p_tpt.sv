//filtro tpt lpf 1 polo.
//Formulas:
// G = g/(1+g) --> lo traemos del PS (G_q1_31)
// v = (x-s) * G
// y = s+v
// s = s + 2*v


module fx_lpf_1p_tpt#(
  parameter int DATA_W = 32
)(
  input logic                      clk,
  input logic                      rst_n,

  //stream mono in
  input logic                      in_valid,
  output logic                     in_ready,
  input logic signed [DATA_W-1:0]  in_data,

  //stream mono out
  output logic                     out_valid,
  input logic                      out_ready,
  output logic signed [DATA_W-1:0] out_data,

  //coeficiente (tpt)
  input logic signed [31:0]        G_q1_31,
  //limpieza de estado
  input logic                      state_clear  
);

  import fx_dsp_pkg::*;

  //estado de filtro (s[n])
  logic signed [31:0] s_state;

  logic signed [31:0] s_eff_r;
  logic signed [31:0] x_minus_s_r; //x-s
  logic signed [31:0] v_r; //v= (x-s)*G

  //fsm
  typedef enum logic [1:0] {
    ST_IDLE = 2'd0,
    ST_MUL  = 2'd1,
    ST_STAGE2 = 2'd2,
    ST_OUTWAIT = 2'd3
  } state_t;

  state_t st;

  wire in_fire = in_valid && in_ready;
  wire out_fire = out_valid && out_ready;

  assign in_ready = (st == ST_IDLE);

  always_ff @(posedge clk) begin
    if(!rst_n) begin
      s_state <= '0;
      s_eff_r <= '0;
      x_minus_s_r <= '0;
      v_r <= '0;
      out_valid <= 1'b0;
      out_data <= '0;
      st <= ST_IDLE;
    end else begin
      if(state_clear) s_state <= '0;
      case (st) 
        ST_IDLE: begin
          out_valid <= 1'b0;
          if (in_fire) begin
            logic signed [31:0] s_eff_1;
            s_eff_1 = state_clear ? 32'sd0 :s_state;
            s_eff_r <= s_eff_1;
            x_minus_s_r <= sat_sub32(in_data, s_eff_1);
            st <= ST_MUL;
          end 
        end
        //st_mul v = (x-s)*G
        ST_MUL: begin
          v_r <= mul_aud_q31(x_minus_s_r, G_q1_31);
          st <= ST_STAGE2;
        end
        ST_STAGE2: begin
          logic signed [63:0] v64_1;

          out_data <= sat_add32(s_eff_r, v_r);
          out_valid <= 1'b1;

          v64_1 = $signed(v_r);
          if(!state_clear)
            s_state <= sat_add32(s_eff_r, sat32(v64_1 <<< 1));
          st <= ST_OUTWAIT;
          
        end
        ST_OUTWAIT: begin
          if (out_fire) begin
            out_valid <= 1'b0;
            st <= ST_IDLE;
          end 
        end
        default: begin
          st <= ST_IDLE;
        end
      endcase // case (st)
    end
  end
endmodule  
