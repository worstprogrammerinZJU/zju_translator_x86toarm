	.arch armv8-a
	.file	"3218.c"
	.text
	.global	line
	.bss
	.align	3
	.type	line, %object
	.size	line, 100
line:
	.zero	100
	.global	str
	.align	3
	.type	str, %object
	.size	str, 100
str:
	.zero	100
	.global	len
	.align	2
	.type	len, %object
	.size	len, 4
len:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.text
	.align	2
	.global	makeline
	.type	makeline, %function
makeline:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 28]
	b	.L2
.L5:
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strcat
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strlen
	mov	x1, x0
	adrp	x0, line
	add	x0, x0, :lo12:line
	add	x0, x1, x0
	mov	w1, 32
	strh	w1, [x0]
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strlen
	mov	w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w2, [x0]
	adrp	x0, line
	add	x1, x0, :lo12:line
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	mov	w0, -1
	b	.L4
.L3:
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 28]
.L2:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	cmp	w0, 75
	ble	.L5
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w2, [x0]
	adrp	x0, line
	add	x1, x0, :lo12:line
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	mov	w0, 1
.L4:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	makeline, .-makeline
	.align	2
	.global	left
	.type	left, %function
left:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	puts
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	left, .-left
	.align	2
	.global	right
	.type	right, %function
right:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 28]
	b	.L8
.L9:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L8:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L9
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	puts
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	right, .-right
	.align	2
	.global	center
	.type	center, %function
center:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L11
.L12:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L11:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L12
	adrp	x0, line
	add	x1, x0, :lo12:line
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	str	wzr, [sp, 28]
	b	.L13
.L14:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L14
	mov	w0, 10
	bl	putchar
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	center, .-center
	.align	2
	.global	justify
	.type	justify, %function
justify:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 20]
	str	wzr, [sp, 28]
	b	.L16
.L18:
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L17
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L17:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L16:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L19
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 24]
.L19:
	str	wzr, [sp, 28]
	b	.L20
.L24:
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L21
	str	wzr, [sp, 20]
	b	.L22
.L23:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L22:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L21
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L21:
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L20:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	mov	w0, 10
	bl	putchar
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	justify, .-justify
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 76
	bne	.L26
	str	wzr, [sp, 28]
	b	.L27
.L26:
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L28
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L27
.L28:
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 67
	bne	.L29
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L27
.L29:
	mov	w0, 3
	str	w0, [sp, 28]
.L27:
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L30
.L35:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L31
	bl	left
	b	.L32
.L31:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L33
	bl	right
	b	.L32
.L33:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L34
	bl	center
	b	.L32
.L34:
	bl	justify
.L32:
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	wzr, [x0]
	adrp	x0, line
	add	x0, x0, :lo12:line
	strb	wzr, [x0]
.L30:
	bl	makeline
	cmp	w0, 1
	beq	.L35
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L36
	bl	left
	b	.L37
.L36:
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L38
	bl	right
	b	.L37
.L38:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L39
	bl	center
	b	.L37
.L39:
	bl	left
.L37:
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
