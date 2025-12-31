	.arch armv8-a
	.file	"3337.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 1000
str:
	.zero	1000
	.global	letter
	.align	3
	.type	letter, %object
	.size	letter, 104
letter:
	.zero	104
	.global	flag
	.align	3
	.type	flag, %object
	.size	flag, 104
flag:
	.zero	104
	.global	ch
	.align	2
	.type	ch, %object
	.size	ch, 4
ch:
	.zero	4
	.global	sym
	.align	2
	.type	sym, %object
	.size	sym, 4
sym:
	.zero	4
	.text
	.align	2
	.global	lexer
	.type	lexer, %function
lexer:
.LFB0:
	.cfi_startproc
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	mov	w0, -1
	b	.L3
.L5:
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
.L4:
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	beq	.L5
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L6
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L6
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	sub	w1, w0, #97
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, ch
	add	x1, x1, :lo12:ch
	str	w2, [x1]
	adrp	x1, str
	add	x1, x1, :lo12:str
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	b	.L3
.L6:
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 43
	bne	.L7
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 43
	bne	.L8
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	mov	w0, 26
	b	.L3
.L8:
	mov	w0, 28
	b	.L3
.L7:
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 45
	bne	.L9
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 45
	bne	.L10
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	mov	w0, 27
	b	.L3
.L10:
	mov	w0, 29
	b	.L3
.L9:
	mov	w0, -1
.L3:
	ret
	.cfi_endproc
.LFE0:
	.size	lexer, .-lexer
	.align	2
	.global	factor
	.type	factor, %function
factor:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 26
	bne	.L12
	bl	lexer
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	b	.L11
.L12:
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 27
	bne	.L14
	bl	lexer
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	b	.L11
.L14:
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L15
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 25
	bgt	.L15
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 26
	bne	.L16
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L17
.L16:
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 27
	bne	.L17
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L17:
	ldr	w0, [sp, 24]
	b	.L11
.L15:
.L11:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	factor, .-factor
	.align	2
	.global	expression
	.type	expression, %function
expression:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	bl	factor
	str	w0, [sp, 28]
	b	.L19
.L21:
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	str	w0, [sp, 24]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	bl	factor
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w0, 28
	bne	.L20
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 28]
	b	.L19
.L20:
	ldr	w0, [sp, 24]
	cmp	w0, 29
	bne	.L19
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
.L19:
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L21
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	expression, .-expression
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"Expression: %s\n"
	.align	3
.LC2:
	.string	"value = %d\n"
	.align	3
.LC3:
	.string	"%c = %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L24
.L30:
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	str	wzr, [sp, 24]
	b	.L25
.L26:
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrsw	x1, [sp, 24]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L25:
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L26
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	wzr, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	bl	expression
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 24]
	b	.L27
.L29:
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L28
	ldr	w0, [sp, 24]
	add	w3, w0, 97
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L28:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L27:
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L29
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L24:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L30
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
