#include <stddef.h>
#include <stdio.h>

#include "../include/fsm.h"

void fsm_init(FSM *fsm) {
    if (fsm == NULL) return;
    fsm->state = STATE_WAITING_FOR_STX;
    fsm->qtd = 0;
    fsm->checksum = 0;
    fsm->index = 0;
}

bool fsm_process(FSM *fsm, uint8_t byte) {
    if (fsm == NULL) return false;

    switch (fsm->state) {
        case STATE_WAITING_FOR_STX:
            if (byte == STX) {
                fsm->state = STATE_READING_QTD;
            }
            break;

        case STATE_READING_QTD:
            fsm->qtd = byte;
            if (fsm->qtd == 0) {
                fsm->state = STATE_ERROR;
            } else {
                fsm->state = STATE_READING_DATA;
            }
            break;

        case STATE_READING_DATA:
            if (fsm->index < fsm->qtd) {  
                fsm->data[fsm->index++] = byte;
                fsm->checksum ^= byte; 
                if (fsm->index >= fsm->qtd) {
                    fsm->state = STATE_READING_CHECKSUM;
                }
            }
            break;

        case STATE_READING_CHECKSUM:
            if (byte == fsm->checksum) {
                fsm->state = STATE_WAITING_FOR_ETX;
            } else {
                fsm->state = STATE_ERROR;
            }
            break;

        case STATE_WAITING_FOR_ETX:
            if (byte == ETX) {
                fsm->state = STATE_COMPLETE;
                return true; 
            } else {
                fsm->state = STATE_ERROR;
            }
            break;

        case STATE_COMPLETE:
        case STATE_ERROR:
            break;
    }

    return false;
}




FSM_State fsm_get_state(const FSM *fsm) {
    if (fsm == NULL) return STATE_ERROR;
    return fsm->state;
}
