#include "../src/protocol.h"
#include <stdio.h>
#include <string.h>
#include <assert.h>

void test_encoder() {
    struct pt pt;
    protocol_init_encoder(&pt);

    Message msg = {3, {'A', 'B', 'C'}, 0};
    uint8_t buffer[260];
    bool encoded = false;

    PT_SCHEDULE(protocol_encoder(&pt, &msg, buffer, &encoded));

    assert(encoded);
    assert(buffer[0] == STX);
    assert(buffer[1] == 3);
    assert(buffer[2] == 'A');
    assert(buffer[3] == 'B');
    assert(buffer[4] == 'C');
    assert(buffer[5] == calculate_checksum(&msg));
    assert(buffer[6] == ETX);

    printf("O codificador de teste foi aprovado.\n");
}

void test_decoder() {
    struct pt pt;
    protocol_init_decoder(&pt);

    uint8_t buffer[260] = {STX, 3, 'A', 'B', 'C', 'A' ^ 'B' ^ 'C', ETX};
    Message msg;
    bool decoded = false;

    PT_SCHEDULE(protocol_decoder(&pt, buffer, &msg, &decoded));

    assert(decoded);
    assert(msg.qty == 3);
    assert(msg.data[0] == 'A');
    assert(msg.data[1] == 'B');
    assert(msg.data[2] == 'C');
    assert(msg.checksum == (msg.data[0] ^ msg.data[1] ^ msg.data[2]));

    printf("O decodificador de teste foi aprovado.\n");
}

int main() {
    test_encoder();
    test_decoder();
    printf("Todos os testes foram aprovados.\n");
    return 0;
}
