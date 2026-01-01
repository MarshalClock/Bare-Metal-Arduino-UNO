	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "C:\\Users\\akash\\Desktop\\GIT_Projects\\Bare-Metal-Arduino-UNO\\UART" "main.c"
.global	uart_init
	.type	uart_init, @function
uart_init:
.LFB0:
	.file 1 "main.c"
	.loc 1 12 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 13 5 view .LVU1
.LVL0:
	.loc 1 14 5 view .LVU2
	.loc 1 14 12 is_stmt 0 view .LVU3
	sts 197,__zero_reg__
	.loc 1 15 5 is_stmt 1 view .LVU4
	.loc 1 15 12 is_stmt 0 view .LVU5
	ldi r24,lo8(103)
	sts 196,r24
	.loc 1 17 5 is_stmt 1 view .LVU6
	.loc 1 17 12 is_stmt 0 view .LVU7
	ldi r24,lo8(24)
	sts 193,r24
	.loc 1 18 5 is_stmt 1 view .LVU8
	.loc 1 18 12 is_stmt 0 view .LVU9
	ldi r24,lo8(6)
	sts 194,r24
/* epilogue start */
	.loc 1 19 1 view .LVU10
	ret
	.cfi_endproc
.LFE0:
	.size	uart_init, .-uart_init
.global	uart_send_char
	.type	uart_send_char, @function
uart_send_char:
.LFB1:
	.loc 1 23 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL1:
.L3:
	.loc 1 24 11 discriminator 1 view .LVU12
	.loc 1 24 13 is_stmt 0 discriminator 1 view .LVU13
	lds r25,192
	.loc 1 24 11 discriminator 1 view .LVU14
	sbrs r25,5
	rjmp .L3
	.loc 1 25 5 is_stmt 1 view .LVU15
	.loc 1 25 10 is_stmt 0 view .LVU16
	sts 198,r24
/* epilogue start */
	.loc 1 26 1 view .LVU17
	ret
	.cfi_endproc
.LFE1:
	.size	uart_send_char, .-uart_send_char
.global	uart_send_string
	.type	uart_send_string, @function
uart_send_string:
.LVL2:
.LFB2:
	.loc 1 30 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 30 1 is_stmt 0 view .LVU19
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 31 5 is_stmt 1 view .LVU20
.LVL3:
.L7:
	.loc 1 31 11 view .LVU21
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L8
/* epilogue start */
	.loc 1 35 1 is_stmt 0 view .LVU22
	pop r29
	pop r28
.LVL4:
	.loc 1 35 1 view .LVU23
	ret
.LVL5:
.L8:
	.loc 1 35 1 view .LVU24
	adiw r28,1
.LVL6:
	.loc 1 33 9 is_stmt 1 view .LVU25
	.loc 1 33 9 is_stmt 0 view .LVU26
	call uart_send_char
.LVL7:
	rjmp .L7
	.cfi_endproc
.LFE2:
	.size	uart_send_string, .-uart_send_string
.global	uart_receive_char
	.type	uart_receive_char, @function
uart_receive_char:
.LFB3:
	.loc 1 39 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L10:
	.loc 1 40 11 discriminator 1 view .LVU28
	.loc 1 40 13 is_stmt 0 discriminator 1 view .LVU29
	lds r24,192
	.loc 1 40 11 discriminator 1 view .LVU30
	sbrs r24,7
	rjmp .L10
	.loc 1 41 5 is_stmt 1 view .LVU31
	.loc 1 41 12 is_stmt 0 view .LVU32
	lds r24,198
/* epilogue start */
	.loc 1 42 1 view .LVU33
	ret
	.cfi_endproc
.LFE3:
	.size	uart_receive_char, .-uart_receive_char
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello from atmega328p!\r\n"
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB4:
	.loc 1 46 1 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 5 view .LVU35
	call uart_init
.LVL8:
	.loc 1 49 5 view .LVU36
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call uart_send_string
.LVL9:
.L13:
	.loc 1 51 5 view .LVU37
.LBB2:
	.loc 1 53 9 view .LVU38
	.loc 1 53 18 is_stmt 0 view .LVU39
	call uart_receive_char
.LVL10:
	.loc 1 54 9 is_stmt 1 discriminator 2 view .LVU40
	call uart_send_char
.LVL11:
	.loc 1 54 9 is_stmt 0 discriminator 2 view .LVU41
.LBE2:
	.loc 1 51 10 is_stmt 1 view .LVU42
	rjmp .L13
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "D:/avr8-gnu-toolchain-4.0.0.52-win32.any.x86_64/avr8-gnu-toolchain-win32_x86_64/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x181
	.word	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1d
	.byte	0x3
	.long	0x31647
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL3
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x7e
	.long	0x3c
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF5
	.byte	0x80
	.long	0x54
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.long	0x43
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5
	.uleb128 0x9
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0xc3
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.long	0xe5
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2
	.long	.LVL10
	.long	0xf1
	.uleb128 0x2
	.long	.LVL11
	.long	0x13e
	.byte	0
	.uleb128 0x2
	.long	.LVL8
	.long	0x164
	.uleb128 0xb
	.long	.LVL9
	.long	0x107
	.uleb128 0xc
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xd
	.long	0xe5
	.uleb128 0xe
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.long	0xe5
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1d
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x138
	.uleb128 0x5
	.string	"str"
	.byte	0x1d
	.byte	0x23
	.long	0x138
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2
	.long	.LVL7
	.long	0x13e
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0xec
	.uleb128 0x4
	.long	.LASF13
	.byte	0x16
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x164
	.uleb128 0x5
	.string	"c"
	.byte	0x16
	.byte	0x1a
	.long	0xe5
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x10
	.long	.LASF17
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF18
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.long	0x4a
	.byte	0x67
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS2:
	.uleb128 .LVU40
	.uleb128 .LVU41
.LLST2:
	.byte	0x8
	.long	.LVL10
	.uleb128 .LVL11-1-.LVL10
	.uleb128 0x1
	.byte	0x68
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST1:
	.byte	0x6
	.long	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LFE2-.LVL2
	.uleb128 0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
.LVUS0:
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.byte	0x8
	.long	.LVL1
	.uleb128 .LFE1-.LVL1
	.uleb128 0x1
	.byte	0x68
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x4
	.byte	0
	.long	0
.LLRL3:
	.byte	0x7
	.long	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.long	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"uart_receive_char"
.LASF14:
	.string	"GNU C23 15.1.0 -mn-flash=1 -mno-skip-bug -mdouble=32 -mlong-double=64 -mmcu=avr5 -g -Os"
.LASF17:
	.string	"uart_init"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF12:
	.string	"uart_send_string"
.LASF18:
	.string	"ubrr"
.LASF15:
	.string	"main"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"uart_send_char"
.LASF11:
	.string	"char"
.LASF5:
	.string	"uint16_t"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"C:\\Users\\akash\\Desktop\\GIT_Projects\\Bare-Metal-Arduino-UNO\\UART"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_4.0.0_52) 15.1.0"
.global __do_copy_data
