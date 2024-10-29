#include "../include/fsm.h"
#include <stdio.h>

void run_test() {
    FSM fsm;
    fsm_initialize(&fsm);

    uint8_t message[] = {STX, 0x03, 'A', 'B', 'C', 0x05, ETX};
    bool completed = false;

    for (int i = 0; i < sizeof(message); i++) {
        if (fsm_process(&fsm, message[i])) {
            completed = true;
            break;
        }
    }

    if (completed && fsm.state == COMPLETE) {
        printf("FSM concluído com sucesso.\n");
    } else {
        printf("FSM falhou. Estado final: %d\n", fsm.state);
    }
}

int main() {
    run_test();
    return 0;
}
