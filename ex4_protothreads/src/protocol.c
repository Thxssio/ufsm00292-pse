#include "protocol.h"
#include <stdio.h>
#include <string.h>

static struct pt pt_encoder, pt_decoder;

void protocol_init_encoder(struct pt *pt) {
    PT_INIT(pt);
}

void protocol_init_decoder(struct pt *pt) {
    PT_INIT(pt);
}

uint8_t calculate_checksum(const Message *msg) {
    uint8_t checksum = 0;
    for (int i = 0; i < msg->qty; i++) {
        checksum ^= msg->data[i];
    }
    return checksum;
}

// Protothread Codificador
PT_THREAD(protocol_encoder(struct pt *pt, Message *msg, uint8_t *buffer, bool *encoded)) {
    static int i;
    PT_BEGIN(pt);

    buffer[0] = STX;
    buffer[1] = msg->qty;
    
    for (i = 0; i < msg->qty; i++) {
        buffer[2 + i] = msg->data[i];
    }
    
    msg->checksum = calculate_checksum(msg);
    buffer[2 + msg->qty] = msg->checksum;
    buffer[3 + msg->qty] = ETX;

    *encoded = true;
    PT_END(pt);
}

// Protothread Decodificador
PT_THREAD(protocol_decoder(struct pt *pt, uint8_t *buffer, Message *msg, bool *decoded)) {
    PT_BEGIN(pt);

    if (buffer[0] != STX || buffer[3 + buffer[1]] != ETX) {
        *decoded = false;
        PT_EXIT(pt);
    }

    msg->qty = buffer[1];
    for (int i = 0; i < msg->qty; i++) {
        msg->data[i] = buffer[2 + i];
    }

    msg->checksum = buffer[2 + msg->qty];
    if (msg->checksum != calculate_checksum(msg)) {
        *decoded = false;
    } else {
        *decoded = true;
    }

    PT_END(pt);
}
