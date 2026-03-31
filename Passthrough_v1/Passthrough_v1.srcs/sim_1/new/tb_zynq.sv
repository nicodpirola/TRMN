`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 23:52:01
// Design Name: 
// Module Name: tb_zynq
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
module tb_zynq();

    // Señales básicas (si tienes puertos externos en tu Block Design)
    // Puertos DDR (Manejados por la simulación VIP del Zynq)
    wire [14:0] DDR_addr;
    wire [2:0]  DDR_ba;
    wire        DDR_cas_n;
    wire        DDR_ck_n;
    wire        DDR_ck_p;
    wire        DDR_cke;
    wire        DDR_cs_n;
    wire [3:0]  DDR_dm;
    wire [31:0] DDR_dq;
    wire [3:0]  DDR_dqs_n;
    wire [3:0]  DDR_dqs_p;
    wire        DDR_odt;
    wire        DDR_ras_n;
    wire        DDR_reset_n;
    wire        DDR_we_n;

    // Puertos FIXED IO (Manejados por la simulación VIP del Zynq)
    wire        FIXED_IO_ddr_vrn;
    wire        FIXED_IO_ddr_vrp;
    wire [53:0] FIXED_IO_mio;
    wire        FIXED_IO_ps_clk;
    wire        FIXED_IO_ps_porb;
    wire        FIXED_IO_ps_srstb;

    logic ps_clk_generator; // Generador de reloj para el PS
    logic ps_porb_generator; // Generador de PORB
    logic ps_srstb_generator; // Generador de SRSTB
    logic sys_clock;        // Reloj de sistema (generado por el TB)

    wire sclk_out_0; // Reloj de bits I2S (equivalente a BCLK)
    wire lrclk_out_0; // Reloj de canal I2S (equivalente a LRCLK)
    wire sclk_out_1;
    wire lrclk_out_1;
    wire mclk_out_adc;
    wire mclk_out_dac;
    logic sdata_0_in_0; // Datos hacia el FPGA (generados por el emulador del TB)
    wire sdata_0_out_0; // Datos desde el FPGA hacia el exterior

    // Instancia del wrapper de tu Block Design
    // NOTA: Cambia "design_1_wrapper" por el nombre real de tu wrapper
    design_1_wrapper dut (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .sys_clock(sys_clock),
        .sclk_out_0(sclk_out_0),
        .lrclk_out_0(lrclk_out_0),
        .sclk_out_1(sclk_out_1),
        .lrclk_out_1(lrclk_out_1),
        .mclk_out_adc(mclk_out_adc),
        .mclk_out_dac(mclk_out_dac),
        .sdata_0_in_0(sdata_0_in_0),
        .sdata_0_out_0(sdata_0_out_0)
    );

    // Variable para capturar la respuesta del bus AXI (0 = OK)
    bit [1:0] resp;
    bit [31:0] read_data; // Para leer la memoria RAM al final

    // =========================================================================
    // Emulador de Fuente de Audio I2S (ADC)
    // =========================================================================
    // Slot de 32 BCLK por medio período LR (C_32BIT_LR=1): solo 24 bits PCM
    // (MSB primero) + 8 bits de padding en cero (Philips / left-justified).
    // shift_reg = { muestra[23:0], 8'b0 } => los primeros 24 bordes envían audio,
    // los 8 últimos envían ceros.
    logic [23:0] left_data  = 24'hA1B2C3;
    logic [23:0] right_data = 24'hB5C6D7;
    logic [31:0] shift_reg = 0;
    logic        lrclk_prev;
    integer      bit_count = 0;

    // Todo el estándar I2S TX se maneja en el flanco de BAJADA (negedge) de SCLK
    always @(negedge sclk_out_0) begin
        if (lrclk_out_0 != lrclk_prev) begin
            // Flanco de LRCLK detectado. Preparamos el contador para iniciar en el
            // SIGUIENTE ciclo de reloj (retardo de 1 BCLK estándar I2S).
            bit_count <= 1;
        end else begin
            if (bit_count == 1) begin
                // Cargamos {24 bits de muestra, 8'b0 padding}; MSB sale por shift_reg[31]
                shift_reg <= (lrclk_out_0 == 1'b0) ? {left_data, 8'b0} : {right_data, 8'b0};
                bit_count <= bit_count + 1;
            end else if (bit_count < 32) begin
                // Desplazamiento MSB-first; al final quedan desplazados los 8 ceros de cola
                shift_reg <= {shift_reg[30:0], 1'b0};
                bit_count <= bit_count + 1;
            end
        end
        lrclk_prev <= lrclk_out_0; // Actualizamos el estado previo
    end
    
    // Bit en curso hacia el FPGA (MSB de la palabra de 32 bits en el registro)
    assign sdata_0_in_0 = (bit_count > 0 && bit_count <= 32) ? shift_reg[31] : 1'b0;

    // -------------------------------------------------------------------------
    // Depuración: copias de señales internas del BD (añadilas al waveform)
    // Rutas según design_1/sim/design_1.v — si regenerás el BD, verificá nombres.
    // Compará: (1) TB shift_reg vs (2) salida I2S RX vs (3) salida del looper.
    // Relojes: mclk_out_adc = dominio m_axis_aud; sclk_out_0 = bit clock serie.
    // -------------------------------------------------------------------------
    wire [31:0] dbg_i2s_m_axis_tdata;
    wire        dbg_i2s_m_axis_tvalid;
    wire        dbg_i2s_m_axis_tready;
    wire [31:0] dbg_looper_m_axis_tdata;
    wire        dbg_looper_m_axis_tvalid;
    wire [31:0] dbg_mm2s_tdata;
    wire        dbg_mm2s_tvalid;
    assign dbg_i2s_m_axis_tdata  = dut.design_1_i.i2s_receiver_0_m_axis_aud_TDATA;
    assign dbg_i2s_m_axis_tvalid = dut.design_1_i.i2s_receiver_0_m_axis_aud_TVALID;
    assign dbg_i2s_m_axis_tready = dut.design_1_i.i2s_receiver_0_m_axis_aud_TREADY;
    assign dbg_looper_m_axis_tdata  = dut.design_1_i.axi_stream_looper_mi_0_m_axis_TDATA;
    assign dbg_looper_m_axis_tvalid = dut.design_1_i.axi_stream_looper_mi_0_m_axis_TVALID;
    assign dbg_mm2s_tdata  = dut.design_1_i.axi_dma_0_M_AXIS_MM2S_TDATA;
    assign dbg_mm2s_tvalid = dut.design_1_i.axi_dma_0_M_AXIS_MM2S_TVALID;

    // Conectamos el generador de reloj al cable que va al puerto inout del Zynq
    assign FIXED_IO_ps_clk = ps_clk_generator;
    assign FIXED_IO_ps_porb = ps_porb_generator;
    assign FIXED_IO_ps_srstb = ps_srstb_generator;

    // =========================================================================
    // Generacion del Reloj Externo
    // =========================================================================
    // Reloj de sistema a 50 MHz (periodo de 20ns) para coincidir con la
    // configuración del AXI DMA (ver design_1_axi_dma_0_0.xml).
    // El sys_clock anterior de 125MHz (always #4) no coincidía.
    initial sys_clock = 0;
    always #10 sys_clock = ~sys_clock; // 10ns high, 10ns low -> 20ns periodo -> 50 MHz

    // =========================================================================
    // Generacion de Reloj y Resets del PS (Zynq)
    // =========================================================================
    initial begin
        ps_clk_generator = 0;
        ps_porb_generator = 0;  // Power-On Reset (Activo en bajo)
        ps_srstb_generator = 0; // System Reset (Activo en bajo)
        #1000; // Incrementado a 1000ns para asegurar >16 ciclos del reloj mas lento (AXI VIP)
        ps_porb_generator = 1;  // Liberamos los resets
        ps_srstb_generator = 1;
    end
    // Reloj del PS a ~33.33 MHz (Periodo de 30ns)
    always #15 ps_clk_generator = ~ps_clk_generator;

    initial begin
        $display("=================================================");
        $display("   Iniciando Simulacion con Zynq VIP (SystemVerilog)  ");
        $display("   I2S TB: 24-bit muestra + 8 ciclos pad por slot LR");
        $display("=================================================");

        // 1. Esperar un tiempo para que el sistema salga del Reset inicial
        // Aumentamos la espera a 50 microsegundos (50000 ns). Esto le da tiempo al bloque
        // Processor System Reset y a cualquier MMCM/PLL para hacer "lock" y liberar el bus AXI.
        #500;
        $display("[TB %t] Sistema inicializado. Configurando perifericos...", $time);

        // =========================================================================
        // LIBERAR RESETS DEL FPGA (PL)
        // =========================================================================
        // En una placa real, el FSBL (Bootloader) libera los FCLK_RESET0_N.
        // En simulacion, el Zynq VIP los mantiene en 0 por defecto, lo que bloquea
        // el AXI SmartConnect y los IPs. Debemos liberarlos manualmente:
        dut.design_1_i.processing_system7_0.inst.fpga_soft_reset(32'h0);
        
        #25000; // Esperamos 25us (25000ns) para asegurar que el MMCM haga "Lock" real en simulacion

        // NOTA IMPORTANTE SOBRE LA JERARQUIA:
        // Tienes que navegar a través del wrapper hasta llegar a la instancia del Zynq.
        // Estructura típica: dut.<nombre_del_block_design>_i.processing_system7_0.inst

        // =========================================================================
        // 2. Configurar el IP I2S (Xilinx i2s_receiver / i2s_transmitter)
        // 2. Preparar configuración del IP I2S (Timing y Canales)
        // =========================================================================
        
        // ATENCION: Al usar IPs separados de Xilinx (Receiver y Transmitter), 
        // cada uno tiene una direccion base distinta. Asumimos 0x43C00000 y 0x43C10000.
        
        // PG308 - Offset 0x20: I2S Timing Control (MCLK_DIV=2, BCLK_DIV=2, FS=64)
        // DIAGNOSTICO: Las mediciones (LRCLK ~38.4kHz) indican que el reloj de referencia
        // del IP I2S no es 50MHz, sino ~40MHz (probablemente generado por el Clock Wizard).
        // NUEVO CALCULO PARA 40 MHz:
        // Buscamos la mejor aproximación a 48 kHz desde 40 MHz.
        // Opcion A (anterior): MCLK_DIV=1, BCLK_DIV=1 -> Div total=16 -> LRCLK = 40MHz/16/64 = 39.06 kHz (Error -18%)
        // Opcion B (NUEVA): MCLK_DIV=2, BCLK_DIV=0 -> Div total=12 -> LRCLK = 40MHz/12/64 = 52.08 kHz (Error +8.5%)
        // La opción B es más cercana y tiene más probabilidades de funcionar en la simulación.
        //
        // El valor a escribir es: {FS_RATIO[15:0], BCLK_DIV[7:0], MCLK_DIV[7:0]}
        // FS_RATIO = 64 (0x0040), BCLK_DIV = 0 (0x00), MCLK_DIV = 2 (0x02) -> 32'h00400002
        $display("[TB %t] Configurando divisores I2S para ~52kHz (aprox. 48kHz con reloj de 40MHz).", $time);
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C00020, 4, 32'h00400002, resp); // RX Timing
        if (resp != 0) $display("[ERROR] Escritura fallida en RX Timing. Resp: %b", resp);
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C10020, 4, 32'h00400002, resp); // TX Timing
        if (resp != 0) $display("[ERROR] Escritura fallida en TX Timing. Resp: %b", resp);
        #1000;

        // PG308 - Offset 0x30: I2S Channel 0 Control. Bit 0 = CH_EN
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C00030, 4, 32'h00000001, resp); // RX Channel 0
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C10030, 4, 32'h00000001, resp); // TX Channel 0
        #1000;

        $display("[TB %t] Modulos Xilinx I2S preparados (Timing y Canales).", $time);

        // =========================================================================
        // 3. Configurar el AXI DMA para S2MM (Traducción de XAxiDma_SimpleTransfer)
        // 3. Configurar y arrancar el AXI DMA para S2MM (Listo para recibir)
        // =========================================================================
        // IMPORTANTE: Asegúrate de que la dirección base del DMA en Vivado sea 0x40400000.
        // Si es distinta (mira en la pestaña "Address Editor"), cámbiala aquí.

        // Paso 0: Aplicar Soft Reset al DMA antes de configurarlo
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400030, 4, 32'h00000004, resp); // S2MM Reset
        #5000;

        // Paso A: Arrancar el canal S2MM (Escribir 1 en S2MM_DMACR, offset 0x30)
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400030, 4, 32'h00000001, resp);

        // Paso B: Escribir la dirección destino en RAM (S2MM_DA, offset 0x48)
        // En tu C esto es (u32)RxBuffer. Aquí inventamos una dir válida en RAM (ej. 1MB)
        dut.design_1_i.processing_system7_0.inst.write_data(
            32'h40400048,
            4,
            32'h00100000,
            resp
        );

        // Paso C: Escribir la longitud a transferir (S2MM_LENGTH, offset 0x58)
        // En tu C esto es MAX_PKT_LEN (16 bytes).
        // PROBLEMA: Transferir 16KB (0x4000) requiere ~42ms de simulación.
        // SOLUCION: Transferimos una cantidad pequeña, como 64 bytes (0x40), que es rápido de simular.
        $display("[TB %t] Configurando DMA S2MM para recibir 64 bytes.", $time);
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400058, 4, 32'h00000040, resp); // Transferir 64 bytes
        #1000;

        // =========================================================================
        // 3.5. Configurar el AXI DMA para MM2S (Transmitir RAM -> Sumador)
        // =========================================================================
        // Aplicar Soft Reset al MM2S
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400000, 4, 32'h00000004, resp); // MM2S Reset
        #5000;

        // Arrancar el canal MM2S (Escribir 1 en MM2S_DMACR, offset 0x00)
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400000, 4, 32'h00000001, resp);
        // Escribir la dirección origen en RAM (MM2S_SA, offset 0x18) - Usamos otra dir (ej. 2MB)
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400018, 4, 32'h00200000, resp);
        // Escribir la longitud a transferir (MM2S_LENGTH, offset 0x28). Esto inicia el envío.
        dut.design_1_i.processing_system7_0.inst.write_data(32'h40400028, 4, 32'h00000040, resp); // Transferir 64 bytes
        #1000;

        $display("[TB %t] DMA Configurado (S2MM). Esperando muestras de Audio...", $time);

        // =========================================================================
        // 4. Encender los módulos I2S (El "Gatillo")
        // =========================================================================
        // Encendemos primero el TX, y por último el RX donde nacen los datos.
        // PG308 - Offset 0x08: I2S Core Control. Bit 0 = I2S_EN
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C10008, 4, 32'h00000001, resp); // TX Core Enable
        #1000;
        dut.design_1_i.processing_system7_0.inst.write_data(32'h43C00008, 4, 32'h00000001, resp); // RX Core Enable
        #10000;

        $display("[TB %t] Modulos I2S encendidos (Relojes generandose, datos fluyendo).", $time);

        // Dejamos correr la simulación un tiempo prudencial.
        // Para 64 bytes, se necesitan 16 transferencias de 4 bytes.
        // Tiempo necesario: 16 * 10.24us ~= 164us.
        // Le damos 200us para que termine con margen.
        #500000;
        
        // =========================================================================
        // 5. Verificar el estado del DMA y los datos en memoria
        // =========================================================================
        $display("[TB %t] Verificando estado del DMA y memoria RAM...", $time);

        // Leemos el registro de estado S2MM (offset 0x34)
        dut.design_1_i.processing_system7_0.inst.read_data(32'h40400034, 4, read_data, resp);
        $display("[TB %t] Registro de estado S2MM_DMASR: 0x%08h", $time, read_data);

        // Verificamos los bits clave:
        // Bit 12 (IOC_Irq): '1' indica que la transferencia se completó.
        // Bit 14 (DMAIntErr): '1' indica un error interno del DMA.
        // Bit 0 (Halted): '0' indica que el DMA está corriendo o inactivo (no parado por error).
        if (read_data[12] == 1 && read_data[14] == 0) begin
            $display("[SUCCESS] El DMA completo la transferencia S2MM sin errores.");
        end else begin
            $display("[FAILURE] El DMA NO completo la transferencia o reporto un error.");
        end
        
        // Usamos read_mem (acceso backdoor) en lugar de read_data (bus AXI GP0)
        dut.design_1_i.processing_system7_0.inst.read_mem(
            32'h00100000, 4, read_data
        );
        $display("[TB %t] Primeros 4 bytes en RAM (0x00100000): 0x%08h", $time, read_data);
        // Muestra izquierda inyectada = 24'hA1B2C3; el IP suele extender signo a 32 bits (p.ej. 0xFFA1B2C3)
        if (read_data[23:0] == 24'hA1B2C3) $display("[SUCCESS] Los 24 bits bajos coinciden con el canal L (A1B2C3).");
        else $display("[FAILURE] El primer dato en memoria NO coincide con la muestra L esperada.");

        $display("[TB %t] Fin de la simulacion.", $time);
        $finish;
    end

endmodule