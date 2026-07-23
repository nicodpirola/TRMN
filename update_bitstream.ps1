$vivado_bit = "X:\Tesis\Passthrough_v1\Passthrough_v1.runs\impl_1\design_1_wrapper.bit"

$vitis_sys_bit = "X:\Tesis\Vitis_Loop_\theremin_dual_core\_ide\bitstream\design_1_wrapper.bit"
$vitis_plat_bit = "X:\Tesis\Vitis_Loop_\platform\hw\design_1_wrapper1.bit"

Write-Host "=========================================="
Write-Host " INYECTANDO BITSTREAM (BYPASS DE VITIS UI) "
Write-Host "=========================================="

if (Test-Path $vivado_bit) {
    Write-Host "[+] Archivo .bit de Vivado encontrado."
    
    # Inyectar en el System Project (El que usa el boton Run)
    if (Test-Path "X:\Tesis\Vitis_Loop_\theremin_dual_core\_ide\bitstream\") {
        Copy-Item -Path $vivado_bit -Destination $vitis_sys_bit -Force
        Write-Host "[OK] Bitstream inyectado en System Project (theremin_dual_core)."
    } else {
        Write-Host "[!] No se encontro la carpeta oculta del System Project."
    }

    # Inyectar en la Plataforma
    if (Test-Path "X:\Tesis\Vitis_Loop_\platform\hw\") {
        Copy-Item -Path $vivado_bit -Destination $vitis_plat_bit -Force
        Write-Host "[OK] Bitstream inyectado en la Plataforma maestra."
    }

    Write-Host "=========================================="
    Write-Host " ACTUALIZACION COMPLETADA. YA PUEDES DARLE A RUN EN VITIS."
    Write-Host "=========================================="
} else {
    Write-Host "[ERROR] No se encontro el archivo .bit en Vivado (impl_1). ¿Compilaste?"
}
