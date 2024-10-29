#ifndef PROTOCOL_H
#define PROTOCOL_H

#include <stdint.h>
#include <stdbool.h>
#include "../include/pt-1.4/pt.h"

#define STX 0x02
#define ETX 0x03

typedef struct {
    uint8_t qty;
    uint8_t data[256];
    uint8_t checksum;
} Message;

void protocol_init_encoder(struct pt *pt);
void protocol_init_decoder(struct pt *pt);

PT_THREAD(protocol_encoder(struct pt *pt, Message *msg, uint8_t *buffer, bool *encoded));
PT_THREAD(protocol_decoder(struct pt *pt, uint8_t *buffer, Message *msg, bool *decoded));

uint8_t calculate_checksum(const Message *msg);

#endif
