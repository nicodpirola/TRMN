`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 17:38:28
// Design Name: 
// Module Name: adder_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axi_stream_looper_mixer (
    input clk,
    input resetn,

    // Control de modo (Manejado desde C via AXI GPIO)
    // 2'b00: IDLE, 2'b01: RECORD, 2'b10: PLAY, 2'b11: OVERDUB
    input [1:0]  mode,

    // Entrada 0: Audio en Vivo (Desde I2S RX)
    input [31:0] s0_axis_tdata,
    input        s0_axis_tvalid,
    input        s0_axis_tlast,
    output       s0_axis_tready,

    // Entrada 1: Audio de la RAM (Desde DMA MM2S)
    input [31:0] s1_axis_tdata,
    input        s1_axis_tvalid,
    input        s1_axis_tlast,
    output       s1_axis_tready,

    // Salida 0: Al Parlante (Hacia I2S TX)
    output [31:0] m_i2s_axis_tdata,
    output        m_i2s_axis_tvalid,
    output        m_i2s_axis_tlast,
    input         m_i2s_axis_tready,

    // Salida 1: De vuelta a la RAM (Hacia DMA S2MM)
    output [31:0] m_dma_axis_tdata,
    output        m_dma_axis_tvalid,
    output        m_dma_axis_tlast,
    input         m_dma_axis_tready
);

    // ==========================================
    // 0. SINCRONIZADOR DE RELOJ (CDC) PARA 'MODE'
    // ==========================================
    // Captura la señal 'mode' (dominio 50MHz) y la sincroniza al reloj
    // local del audio (dominio 12.288MHz) evitando metaestabilidad.
    reg [1:0] mode_sync_1, mode_sync_2;
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            mode_sync_1 <= 2'b00;
            mode_sync_2 <= 2'b00;
        end else begin
            mode_sync_1 <= mode;
            mode_sync_2 <= mode_sync_1;
        end
    end

    // ==========================================
    // 1. LOGICA DE DATOS Y MEZCLA
    // ==========================================
    wire signed [31:0] live_audio = s0_axis_tdata;
    wire signed [31:0] ram_audio  = s1_axis_tvalid ? s1_axis_tdata : 32'd0;

    // Suma con saturación
    wire signed [33:0] full_sum = $signed(live_audio) + $signed(ram_audio);
    wire [31:0] mixed_audio = (full_sum > 33'sd2147483647)  ? 32'h7FFFFFFF :
                              (full_sum < -33'sd2147483648) ? 32'h80000000 :
                              full_sum[31:0];

    // Ruteo de señales según el modo operativo
    reg [31:0] i2s_out_data;
    reg [31:0] dma_out_data;

    always @(*) begin
        case(mode_sync_2)
            2'b00: begin // IDLE: Escuchas en vivo, no guardas nada.
                i2s_out_data = live_audio;
                dma_out_data = 32'd0;
            end
            2'b01: begin // RECORD: Escuchas en vivo, guardas en vivo a RAM.
                i2s_out_data = live_audio;
                dma_out_data = live_audio;
            end
            2'b10: begin // PLAY: Escuchas mezcla, guardas la RAM intacta de nuevo.
                i2s_out_data = mixed_audio;
                dma_out_data = ram_audio;
            end
            2'b11: begin // OVERDUB: Escuchas mezcla, guardas la mezcla en RAM.
                i2s_out_data = mixed_audio;
                dma_out_data = mixed_audio;
            end
        endcase
    end

    assign m_i2s_axis_tdata = i2s_out_data;
    assign m_dma_axis_tdata = dma_out_data;

    // ==========================================
    // 2. LOGICA DE CONTROL (HANDSHAKE AXI-STREAM)
    // ==========================================
    // TLAST es marcado por la entrada en vivo (I2S marca el tamaño del paquete/frame)
    assign m_i2s_axis_tlast = s0_axis_tlast;
    assign m_dma_axis_tlast = s0_axis_tlast;

    // Indicador interno: ¿El DMA está grabando en este modo?
    wire dma_active = (mode_sync_2 != 2'b00); // 1 en RECORD, PLAY y OVERDUB

    // I2S TX siempre recibe datos. DMA S2MM recibe datos solo si está activo.
    // IMPORTANTE: Si apagamos tvalid al DMA en IDLE, evitamos que el sistema 
    // se cuelgue cuando apagamos el DMA S2MM desde C.
    assign m_i2s_axis_tvalid = s0_axis_tvalid;
    assign m_dma_axis_tvalid = s0_axis_tvalid && dma_active;

    // ¿Cuándo estamos listos para recibir una nueva muestra del I2S RX (s0)?
    // Cuando el parlante está listo Y (si el DMA está activo) el DMA está listo.
    wire dma_ready_condition = dma_active ? m_dma_axis_tready : 1'b1;
    assign s0_axis_tready = m_i2s_axis_tready && dma_ready_condition;

    // ¿Cuándo pedimos y consumimos una muestra de la RAM (s1)?
    // Solo en los modos donde leemos de la RAM (PLAY y OVERDUB) y al ritmo del I2S.
    wire ram_active = (mode_sync_2 == 2'b10 || mode_sync_2 == 2'b11);
    assign s1_axis_tready = ram_active && s0_axis_tvalid && s0_axis_tready;

endmodule
