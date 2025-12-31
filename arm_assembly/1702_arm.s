	.arch armv8-a
	.file	"1702.c"
	.text
	.global	pow
	.data
	.align	3
	.type	pow, %object
	.size	pow, 80
pow:
	.word	1
	.word	3
	.word	9
	.word	27
	.word	81
	.word	243
	.word	729
	.word	2187
	.word	6561
	.word	19683
	.word	59049
	.word	177147
	.word	531441
	.word	1594323
	.word	4782969
	.word	14348907
	.word	43046721
	.word	129140163
	.word	387420489
	.word	1162261467
	.global	bit
	.bss
	.align	3
	.type	bit, %object
	.size	bit, 80
bit:
	.zero	80
	.text
	.align	2
	.global	mod
	.type	mod, %function
mod:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	w2, [sp, 12]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x2, [sp, 28]
	str	w1, [x0, x2, lsl 2]
	ldr	w0, [sp, 12]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, bit
	add	x1, x1, :lo12:bit
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	cmp	w0, 2
	bne	.L2
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	mod, .-mod
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"empty"
	.align	3
.LC2:
	.string	",%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L6
.L25:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	bl	mod
	str	w0, [sp, 36]
	str	wzr, [sp, 40]
	b	.L7
.L10:
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L8
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L9
.L8:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
.L9:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L11
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L12
.L11:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L13
.L15:
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L14
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L14:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L13:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L15
.L12:
	mov	w0, 32
	bl	putchar
	str	wzr, [sp, 40]
	b	.L16
.L19:
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L17
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L18
.L17:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L16:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L19
.L18:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L20
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L21
.L20:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L22
.L24:
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L23
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L23:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L22:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L24
.L21:
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
