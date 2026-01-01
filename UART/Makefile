# ===== MCU & TOOLS =====
MCU = atmega328p
CC  = avr-gcc
OC  = avr-objcopy
OD  = avr-objdump
DUDE = avrdude

# ===== FILES =====
SRC = main.c

PRE = main.i
ASM = main.s
OBJ = main.o
ELF = main.elf
HEX = main.hex
BIN = main.bin
LST = main.lst

# ===== FLAGS =====
CFLAGS  = -mmcu=$(MCU) -Os -g -Wall
LDFLAGS = -mmcu=$(MCU)

# ===== DEFAULT TARGET =====
all: $(PRE) $(ASM) $(OBJ) $(ELF) $(HEX) $(BIN) $(LST)

# ===== PREPROCESS =====
$(PRE): $(SRC)
	$(CC) -mmcu=$(MCU) -E $< > $@

# ===== ASSEMBLY =====
$(ASM): $(SRC)
	$(CC) $(CFLAGS) -S $< -o $@

# ===== OBJECT + LISTING =====
$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $< -o $@ -Wa,-adhln=$(LST)

# ===== ELF =====
$(ELF): $(OBJ)
	$(CC) $(LDFLAGS) $< -o $@

# ===== HEX =====
$(HEX): $(ELF)
	$(OC) -O ihex -R .eeprom $< $@

# ===== BIN =====
$(BIN): $(ELF)
	$(OC) -O binary -R .eeprom $< $@

# ===== LST from OBJDUMP (optional, better than assembler) =====
$(LST): $(ELF)
	$(OD) -h -S $< > $@

# ===== FLASH =====
flash: $(HEX)
	$(DUDE) -v -p$(MCU) -carduino -P COM6 -b115200 -D -U flash:w:$<:i

# ===== CLEAN =====
clean:
	rm -f $(PRE) $(ASM) $(OBJ) $(ELF) $(HEX) $(BIN) $(LST)
