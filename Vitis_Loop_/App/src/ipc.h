#ifndef IPC_H
#define IPC_H

#include "xil_types.h"

// Memoria Compartida OCM (On-Chip Memory) - Dirección reservada en ambos linker scripts
#define IPC_BASE_ADDR 0xFFFF0000

// Estructura de comunicación entre Core 0 y Core 1
typedef struct {
    // Comandos desde el Núcleo 0 (UI) hacia el Núcleo 1 (Audio)
    volatile int hw_mode;       // 0=IDLE, 1=REC, 2=PLAY, 3=OVERDUB
    volatile int sd_recording;  // 1=Grabar a SD, 0=Detener
    
    // Status desde el Núcleo 1 (Audio) hacia el Núcleo 0 (UI)
    volatile u32 loop_index;
    volatile u32 loop_length;
    volatile int core1_ready;   // 1 cuando el Núcleo 1 terminó de arrancar
} IPC_Data;

// Macro para acceder fácilmente a la memoria compartida
#define IPC ((IPC_Data*)IPC_BASE_ADDR)

#endif // IPC_H
