# USART Configuration and Baud Rate Calculation

## Baud Rate Calculation

The baud rate register (UBRR) is calculated using the formula:

\[
\text{UBRR} = \frac{F_\text{CPU}}{16 \cdot \text{BAUD}} - 1
\]

For example, for a **16 MHz clock** and **9600 baud**:

\[
\text{UBRR} = 103
\]

---

## Registers

### UCSR0B

| Bit | Description         | Value |
|-----|-------------------|-------|
| TXEN0 | Enable transmit    | 1     |
| RXEN0 | Enable receive     | 1     |

### UCSR0C

| Bit      | Description | Value |
|----------|------------|-------|
| UCSZ01  | Data size bit 1 | 1 |
| UCSZ00  | Data size bit 0 | 1 |

- This configures **8-bit data**.

### UDR0

- Write to **send** data.
- Read to **receive** data.

---

## Polling Flags

| Flag  | Description                       | Usage                     |
|-------|-----------------------------------|---------------------------|
| UDRE0 | USART Data Register Empty         | Wait until ready to send  |
| RXC0  | USART Receive Complete            | Wait until a character is received |
