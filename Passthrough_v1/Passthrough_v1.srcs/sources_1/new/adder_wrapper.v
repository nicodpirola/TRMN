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

    // Entrada 0: Audio en Vivo
    input [31:0] s0_axis_tdata,
    input        s0_axis_tvalid,
    input        s0_axis_tlast,    // <--- Nuevo
    output       s0_axis_tready,

    // Entrada 1: Audio de la RAM (DDR3)
    input [31:0] s1_axis_tdata,
    input        s1_axis_tvalid,
    input        s1_axis_tlast,    // <--- Nuevo
    output       s1_axis_tready,

    // Salida Mezclada
    output [31:0] m_axis_tdata,
    output        m_axis_tvalid,
    output        m_axis_tlast,    // <--- Nuevo
    input         m_axis_tready
);

    // NUEVA LOGICA DE HANDSHAKE:
    // El canal de I2S (s0) marca el ritmo. El audio en vivo fluye libremente.
    // El canal de RAM (s1) se sincroniza a este ritmo. Si no hay datos en s1, sumamos silencio.

    // El canal I2S avanza siempre que el DMA destino (S2MM) esté listo para recibir.
    assign s0_axis_tready = m_axis_tready;
    
    // Extraemos de la RAM (s1) UNICAMENTE si también estamos avanzando una muestra de I2S (s0)
    // Esto asegura que la RAM se lea a exactamente 48kHz / 96kHz.
    assign s1_axis_tready = s0_axis_tvalid && m_axis_tready;

    // La salida es válida en el momento en que el ADC (s0) escupe una muestra. No esperamos a s1.
    assign m_axis_tvalid  = s0_axis_tvalid;

    // El TLAST lo rige el I2S para marcar el fin del frame hacia el DMA S2MM
    assign m_axis_tlast   = s0_axis_tlast;

    // Si s1 tiene datos listos, los tomamos. Si no, inyectamos silencio (0) para no congelar s0.
    wire signed [31:0] s1_data_safe = s1_axis_tvalid ? s1_axis_tdata : 32'd0;

    // Suma con saturación simple (asumiendo audio con signo de 32 bits)
    // Para ponderar los canales en el futuro, se multiplicarían s0_axis_tdata y s1_data_safe
    // por coeficientes (por ejemplo, en formato de coma fija Q1.15) antes de sumarlos.
    wire signed [33:0] full_sum = $signed(s0_axis_tdata) + $signed(s1_data_safe);

    // Comparamos contra literales signed de 33 bits, pero asignamos literales hexadecimales puros
    assign m_axis_tdata = (full_sum > 33'sd2147483647)  ? 32'h7FFFFFFF : // Límite Máximo Positivo
                          (full_sum < -33'sd2147483648) ? 32'h80000000 : // Límite Máximo Negativo
                          full_sum[31:0];

    // =========================================================================
    // MODO DEBUG: BYPASS PURO (Comentado)
    // =========================================================================
    // assign m_axis_tdata = s0_axis_tdata;

endmodule
