#include<stdint.h>

#include<avr/io.h>

// Define Baud Rate
#define F_CPU   16000000UL    // 16MHz
#define BAUD    9600
#define MY_UBRR ((F_CPU/16/BAUD)-1)


void uart_init(void)
{
    uint16_t ubrr = MY_UBRR;
    UBRR0H = (ubrr >> 8);    // Set baud rate high byte
    UBRR0L = ubrr;          // Set baud rate low byte

    UCSR0B = (1 << TXEN0) | (1 << RXEN0);   // Enable transmitter and receiver
    UCSR0C = (1 << UCSZ01) | (1 << UCSZ00); // 8-bit data, 1 stop bit, no parity
}

// Transmit a single character
void uart_send_char(char c)
{
    while(!(UCSR0A & (1 << UDRE0)));    //Wait until buffer is empty
    UDR0 = c;    // send character
}

// Transmit a string
void uart_send_string(const char* str)
{
    while(*str)
    {
        uart_send_char(*str++);
    }
}

// Receive a single character
char uart_receive_char(void)
{
    while(!(UCSR0A & (1 << RXC0)));     // wait until data is received
    return UDR0;
}

// main function
int main(void)
{
    uart_init();

    uart_send_string("Hello from atmega328p!\r\n");

    while(1)
    {
        char c = uart_receive_char();   // Receive a char
        uart_send_char(c);              // Echo it back
    }
}