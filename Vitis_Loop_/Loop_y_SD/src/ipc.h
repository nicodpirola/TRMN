#ifndef IPC_H
#define IPC_H

#include "xil_types.h"

// Dirección memoria compartida 
#define IPC_BASE_ADDR 0xFFFF0000

//estructura de comunicación entre cores
typedef struct {
    // Comandos desde el núcleo 0 (UI) hacia el núcleo 1 (Audio)
    volatile int hw_mode;       // 0=IDLE, 1=REC, 2=PLAY, 3=OVERDUB
    volatile int sd_recording;  // 1=Grabar a SD, 0=Detener
    
    // Status desde el núcleo 1 a 0
    volatile u32 loop_index;
    volatile u32 loop_length;
    volatile int core1_ready;   // 1 cuando el Núcleo 1 terminó de arrancar
} IPC_Data;

#define IPC ((IPC_Data*)IPC_BASE_ADDR)
#endif
