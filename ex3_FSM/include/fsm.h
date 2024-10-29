#ifndef FSM_H
#define FSM_H

#include <stdint.h>
#include <stdbool.h>

#define STX 0x02
#define ETX 0x03

typedef enum {
    WAITING_FOR_STX,
    READING_QTY,
    READING_DATA,
    READING_CHECKSUM,
    WAITING_FOR_ETX,
    COMPLETE,
    ERROR
} FSM_State;

typedef struct {
    FSM_State state;
    uint8_t qty;
    uint8_t data[256];
    uint8_t checksum;
    uint8_t dataIndex;
} FSM;

void fsm_initialize(FSM *fsm);
bool fsm_process(FSM *fsm, uint8_t byte);

#endif
