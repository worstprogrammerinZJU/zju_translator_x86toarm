	.arch armv8-a
	.file	"2190.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 20
str:
	.zero	20
	.global	qu
	.align	2
	.type	qu, %object
	.size	qu, 4
qu:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC2:
	.string	"X"
	.align	3
.LC3:
	.string	"-1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 24]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
.L5:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 63
	bne	.L3
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	ldr	w1, [sp, 28]
	str	w1, [x0]
	b	.L4
.L3:
	mov	w1, 10
	ldr	w0, [sp, 28]
	sub	w1, w1, w0
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	sub	w0, w0, #48
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 8
	ble	.L5
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	cmp	w0, 63
	bne	.L6
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	mov	w1, 9
	str	w1, [x0]
	b	.L7
.L6:
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	cmp	w0, 88
	bne	.L8
	ldr	w0, [sp, 24]
	add	w0, w0, 10
	str	w0, [sp, 24]
	b	.L7
.L8:
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L7:
	str	wzr, [sp, 28]
	b	.L9
.L12:
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	ldr	w0, [x0]
	mov	w1, 10
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	mov	w0, 41705
	movk	w0, 0x2e8b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	beq	.L17
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L9:
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L12
	b	.L11
.L17:
	nop
.L11:
	ldr	w0, [sp, 28]
	cmp	w0, 9
	bgt	.L13
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L14
.L13:
	ldr	w0, [sp, 24]
	add	w1, w0, 10
	mov	w0, 41705
	movk	w0, 0x2e8b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L14
.L15:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L14:
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
