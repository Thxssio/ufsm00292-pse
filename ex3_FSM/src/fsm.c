#include "../include/fsm.h"
#include <stdio.h>

bool fsm_waiting_for_stx(FSM *fsm, uint8_t byte);
bool fsm_reading_qty(FSM *fsm, uint8_t byte);
bool fsm_reading_data(FSM *fsm, uint8_t byte);
bool fsm_reading_checksum(FSM *fsm, uint8_t byte);
bool fsm_waiting_for_etx(FSM *fsm, uint8_t byte);

bool (*stateTable[])(FSM*, uint8_t) = {
    fsm_waiting_for_stx,
    fsm_reading_qty,
    fsm_reading_data,
    fsm_reading_checksum,
    fsm_waiting_for_etx
};

void fsm_initialize(FSM *fsm) {
    fsm->state = WAITING_FOR_STX;
    fsm->qty = 0;
    fsm->checksum = 0;
    fsm->dataIndex = 0;
}

bool fsm_process(FSM *fsm, uint8_t byte) {
    if (fsm->state < sizeof(stateTable) / sizeof(stateTable[0])) {
        bool completed = stateTable[fsm->state](fsm, byte);
        return completed;
    }
    return false;
}

bool fsm_waiting_for_stx(FSM *fsm, uint8_t byte) {
    if (byte == STX) {
        fsm->state = READING_QTY;
    }
    return false;
}

bool fsm_reading_qty(FSM *fsm, uint8_t byte) {
    fsm->qty = byte;
    fsm->dataIndex = 0;
    fsm->state = READING_DATA;
    return false;
}

bool fsm_reading_data(FSM *fsm, uint8_t byte) {
    if (fsm->dataIndex < fsm->qty) {
        fsm->data[fsm->dataIndex++] = byte;
        if (fsm->dataIndex == fsm->qty) {
            fsm->state = READING_CHECKSUM;
        }
    }
    return false;
}

bool fsm_reading_checksum(FSM *fsm, uint8_t byte) {
    fsm->checksum = byte;
    fsm->state = WAITING_FOR_ETX;
    return false;
}

bool fsm_waiting_for_etx(FSM *fsm, uint8_t byte) {
    if (byte == ETX) {
        fsm->state = COMPLETE;
        printf("Mensagem completa e correta.\n");
        return true;
    } else {
        fsm->state = ERROR;
        printf("Erro: ETX esperado, mas byte recebido: 0x%02X\n", byte);
    }
    return false;
}
