#include <stdio.h>
#include "minunit.h"
#include "fsm.h"

int tests_run = 0;

static char * test_fsm_initialization() {
    FSM fsm;
    fsm_init(&fsm);
    mu_assert("Erro: Estado inicial não é STATE_WAITING_FOR_STX", fsm.state == STATE_WAITING_FOR_STX);
    mu_assert("Erro: QTD inicial não é 0", fsm.qtd == 0);
    mu_assert("Erro: Checksum inicial não é 0", fsm.checksum == 0);
    mu_assert("Erro: Index inicial não é 0", fsm.index == 0);
    return 0;
}

static char * test_fsm_process_stx() {
    FSM fsm;
    fsm_init(&fsm);
    bool complete = fsm_process(&fsm, STX);
    mu_assert("Erro: Processar STX não deve completar a mensagem", !complete);
    mu_assert("Erro: Estado após STX não é STATE_READING_QTD", fsm.state == STATE_READING_QTD);
    return 0;
}

static char * test_fsm_process_qtd() {
    FSM fsm;
    fsm_init(&fsm);
    fsm_process(&fsm, STX);
    bool complete = fsm_process(&fsm, 0x02);
    mu_assert("Erro: Processar QTD não deve completar a mensagem", !complete);
    mu_assert("Erro: QTD após processamento não é 2", fsm.qtd == 2);
    mu_assert("Erro: Estado após QTD não é STATE_READING_DATA", fsm.state == STATE_READING_DATA);
    return 0;
}

static char * test_fsm_process_data() {
    FSM fsm;
    fsm_init(&fsm);
    fsm_process(&fsm, STX);
    fsm_process(&fsm, 0x02);
    bool complete1 = fsm_process(&fsm, 'A');
    mu_assert("Erro: Processar primeiro dado não deve completar a mensagem", !complete1);
    mu_assert("Erro: Dados[0] não é 'A'", fsm.data[0] == 'A');
    mu_assert("Erro: Index após primeiro dado não é 1", fsm.index == 1);
    mu_assert("Erro: Checksum após primeiro dado não é 'A'", fsm.checksum == 'A');
    
    bool complete2 = fsm_process(&fsm, 'B');
    mu_assert("Erro: Processar segundo dado não deve completar a mensagem", !complete2);
    mu_assert("Erro: Dados[1] não é 'B'", fsm.data[1] == 'B');
    mu_assert("Erro: Index após segundo dado não é 2", fsm.index == 2);
    mu_assert("Erro: Checksum após segundo dado não é 'A' ^ 'B'", fsm.checksum == ('A' ^ 'B'));
    
    mu_assert("Erro: Estado após processar dados não é STATE_READING_CHECKSUM", fsm.state == STATE_READING_CHECKSUM);
    return 0;
}

static char * test_fsm_process_correct_checksum_and_etx() {
    FSM fsm;
    fsm_init(&fsm);
    
    uint8_t message[] = {STX, 0x02, 'A', 'B', 0x03, ETX};
    
    for (size_t i = 0; i < sizeof(message); i++) {
        bool complete = fsm_process(&fsm, message[i]);
        if (complete && i != sizeof(message) - 1) {
            return "Erro: A mensagem foi marcada como completa antes do final.";
        }
    }
    
    FSM_State final_state = fsm_get_state(&fsm);
    
    if (final_state != STATE_COMPLETE) {
        printf("Erro: Estado final não é STATE_COMPLETE\n");
        return "Erro: Estado final não é STATE_COMPLETE";
    }

    return 0;  // Teste passou
}

static char * test_fsm_process_incorrect_checksum() {
    FSM fsm;
    fsm_init(&fsm);
    
    uint8_t message[] = {STX, 0x02, 'A', 'B', 0x00, ETX};
    
    for (size_t i = 0; i < sizeof(message); i++) {
        bool complete = fsm_process(&fsm, message[i]);
        if (complete) {
            return "Erro: A mensagem foi marcada como completa com checksum incorreto.";
        }
    }
    
    mu_assert("Erro: Estado final não é STATE_ERROR", fsm_get_state(&fsm) == STATE_ERROR);
    return 0;
}

static char * test_fsm_process_incorrect_etx() {
    FSM fsm;
    fsm_init(&fsm);
    
    uint8_t message[] = {STX, 0x02, 'A', 'B', 0x03, 0x04};
    
    for (size_t i = 0; i < sizeof(message); i++) {
        bool complete = fsm_process(&fsm, message[i]);
        if (complete) {
            return "Erro: A mensagem foi marcada como completa com ETX incorreto.";
        }
    }
    
    mu_assert("Erro: Estado final não é STATE_ERROR", fsm_get_state(&fsm) == STATE_ERROR);
    return 0;
}

static char * test_fsm_process_empty_message() {
    FSM fsm;
    fsm_init(&fsm);
    
    uint8_t message[] = {STX, 0x00, 0x00, ETX};
    
    for (size_t i = 0; i < sizeof(message); i++) {
        bool complete = fsm_process(&fsm, message[i]);
        if (complete) {
            return "Erro: A mensagem vazia foi marcada como completa.";
        }
    }
    
    mu_assert("Erro: Estado final não é STATE_ERROR para mensagem vazia", fsm_get_state(&fsm) == STATE_ERROR);
    return 0;
}

static char * test_fsm_process_excess_data() {
    FSM fsm;
    fsm_init(&fsm);
    
    uint8_t message[] = {STX, 0x02, 'A', 'B', 0x03, ETX};
    
    for (size_t i = 0; i < sizeof(message); i++) {
        bool complete = fsm_process(&fsm, message[i]);
        
        if (complete && i != sizeof(message) - 1) {
            printf("Erro detectado: Mensagem foi marcada como completa antes do final com dados excedentes.\n");
            return "Erro: A mensagem foi marcada como completa antes do final com dados excedentes.";
        }
    }
    
    mu_assert("Erro: Estado final não é STATE_COMPLETE", fsm_get_state(&fsm) == STATE_COMPLETE);
    mu_assert("Erro: Dados excedentes não deveriam afetar o estado", fsm.index == 2);
    return 0;
}



static char * all_tests() {
    mu_run_test(test_fsm_initialization);
    mu_run_test(test_fsm_process_stx);
    mu_run_test(test_fsm_process_qtd);
    mu_run_test(test_fsm_process_data);
    mu_run_test(test_fsm_process_correct_checksum_and_etx);
    mu_run_test(test_fsm_process_incorrect_checksum);
    mu_run_test(test_fsm_process_incorrect_etx);
    mu_run_test(test_fsm_process_empty_message);
    mu_run_test(test_fsm_process_excess_data);

    return 0;
}

int main() {
    char *result = all_tests();
    if (result != 0) {
        printf("%s\n", result);
    } else {
        printf("TODOS OS TESTES PASSARAM.\n");
    }
    printf("Testes executados: %d\n", tests_run);

    return result != 0;
}
