# Commands to generate compilation files

#### preprocessing stage .i
    - avr-gcc -mmcu=atmega328p -E main.c > main.i

#### compilation stage generate assembly file .s
    - avr-gcc -mmcu=atmega328p -S main.c > main.s

#### assembly stage genarate object file .o
    - avr-gcc -mmcu=atmega328p -c main.c > main.o

#### Linking statge generate .elf
    - avr-gcc -mmcu=atmega328p main.o -o main.elf

#### generating a hex file .hex
    - avr-objcopy -O ihex -R .eeprom main.elf main.hex

#### generate binary file .bin
    - avr-objcopy -O binary -R .eeprom main.elf main.hex

#### generate log file .lst
    avr-gcc -mmcu=atmega328p -Wa,-adhln main.c > main.lst

#### Command to flash hex to mcu
    -avrdude -v -patmega328p -carduino -P COM6 -b115200 -D -U flash:w:main.hex:i