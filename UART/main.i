# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/lib/gcc/avr/15.1.0/include/stdint.h" 1 3 4
# 9 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/lib/gcc/avr/15.1.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 1 3 4
# 125 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 12 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/lib/gcc/avr/15.1.0/include/stdint.h" 2 3 4
#pragma GCC diagnostic pop
# 2 "main.c" 2

# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 1 3
# 99 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 3
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/sfr_defs.h" 1 3
# 126 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/sfr_defs.h" 3
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/inttypes.h" 1 3
# 77 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;





typedef uint32_t uint_farptr_t;
# 127 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/sfr_defs.h" 2 3
# 100 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3
# 254 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 3
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/iom328p.h" 1 3
# 255 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3
# 785 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 3
# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/portpins.h" 1 3
# 786 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3

# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/common.h" 1 3
# 788 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3

# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/version.h" 1 3
# 790 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3






# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/fuse.h" 1 3
# 239 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 797 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3


# 1 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/lock.h" 1 3
# 800 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/avr/io.h" 2 3
# 4 "main.c" 2








# 11 "main.c"
void uart_init(void)
{
    uint16_t ubrr = ((16000000UL/16/9600)-1);
    
# 14 "main.c" 3
   (*(volatile uint8_t *)(0xC5)) 
# 14 "main.c"
          = (ubrr >> 8);
    
# 15 "main.c" 3
   (*(volatile uint8_t *)(0xC4)) 
# 15 "main.c"
          = ubrr;

    
# 17 "main.c" 3
   (*(volatile uint8_t *)(0xC1)) 
# 17 "main.c"
          = (1 << 
# 17 "main.c" 3
                  3
# 17 "main.c"
                       ) | (1 << 
# 17 "main.c" 3
                                 4
# 17 "main.c"
                                      );
    
# 18 "main.c" 3
   (*(volatile uint8_t *)(0xC2)) 
# 18 "main.c"
          = (1 << 
# 18 "main.c" 3
                  2
# 18 "main.c"
                        ) | (1 << 
# 18 "main.c" 3
                                  1
# 18 "main.c"
                                        );
}


void uart_send_char(char c)
{
    while(!(
# 24 "main.c" 3
           (*(volatile uint8_t *)(0xC0)) 
# 24 "main.c"
                  & (1 << 
# 24 "main.c" 3
                          5
# 24 "main.c"
                               )));
    
# 25 "main.c" 3
   (*(volatile uint8_t *)(0xC6)) 
# 25 "main.c"
        = c;
}


void uart_send_string(const char* str)
{
    while(*str)
    {
        uart_send_char(*str++);
    }
}


char uart_receive_char(void)
{
    while(!(
# 40 "main.c" 3
           (*(volatile uint8_t *)(0xC0)) 
# 40 "main.c"
                  & (1 << 
# 40 "main.c" 3
                          7
# 40 "main.c"
                              )));
    return 
# 41 "main.c" 3
          (*(volatile uint8_t *)(0xC6))
# 41 "main.c"
              ;
}


int main(void)
{
    uart_init();

    uart_send_string("Hello from atmega328p!\r\n");

    while(1)
    {
        char c = uart_receive_char();
        uart_send_char(c);
    }
}
