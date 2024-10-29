#ifndef FSM_H
#define FSM_H

#include <stdint.h>
#include <stdbool.h>

#define STX 0x02
#define ETX 0x03

typedef enum {
    STATE_WAITING_FOR_STX = 0,
    STATE_READING_QTD,
    STATE_READING_DATA,
    STATE_READING_CHECKSUM,
    STATE_WAITING_FOR_ETX,
    STATE_COMPLETE,
    STATE_ERROR
} FSM_State;

typedef struct {
    FSM_State state;        
    uint8_t qtd;            
    uint8_t data[256];      
    uint8_t checksum;       
    uint8_t index;          
} FSM;

void fsm_init(FSM *fsm);
bool fsm_process(FSM *fsm, uint8_t byte);
FSM_State fsm_get_state(const FSM *fsm);

#endif 
