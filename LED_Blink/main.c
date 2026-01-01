#define F_CPU 16000000UL

#include <avr/io.h>

void delay_ms(unsigned int ms) {
    for (unsigned int i = 0; i < ms; i++) {
        for (unsigned int j = 0; j < 1600; j++) {
            __asm__ __volatile__("nop");
        }
    }
}

int main(void) {
    // Set PB5 (pin 13) as output
    DDRB |= (1 << DDB5);

    while (1) {
        // Toggle PB5
        PORTB ^= (1 << PORTB5);

        delay_ms(500);
    }
}
