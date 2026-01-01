	.arch armv8-a
	.file	"2934.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	word
	.align	3
	.type	word, %object
	.size	word, 260000
word:
	.zero	260000
	.global	query
	.align	3
	.type	query, %object
	.size	query, 26
query:
	.zero	26
	.section	.rodata
	.align	3
.LC0:
	.string	"%s is correct\n"
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L2
.L5:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x2, x0, x1
	adrp	x0, query
	add	x1, x0, :lo12:query
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	adrp	x0, query
	add	x1, x0, :lo12:query
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 1
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
.L4:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	cmp, .-cmp
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%s"
	.align	3
.LC3:
	.string	"%s is a misspelling of %s\n"
	.align	3
.LC4:
	.string	"%s is unknown\n"
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
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L7
.L8:
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L8
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L9
.L33:
	adrp	x0, query
	add	x1, x0, :lo12:query
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	bl	cmp
	cmp	w0, 1
	beq	.L35
	adrp	x0, query
	add	x0, x0, :lo12:query
	bl	strlen
	str	w0, [sp, 24]
	str	wzr, [sp, 40]
	b	.L12
.L32:
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	bl	strlen
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	cmp	w0, 1
	bgt	.L36
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	cmp	w0, 1
	bgt	.L36
	str	wzr, [sp, 36]
	b	.L16
.L17:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L16:
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 36]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	adrp	x0, query
	add	x2, x0, :lo12:query
	ldrsw	x0, [sp, 36]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	beq	.L17
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L18
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	adrp	x0, word
	add	x3, x0, :lo12:word
	sxtw	x2, w1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w3, w0, 1
	adrp	x0, query
	add	x2, x0, :lo12:query
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L21
.L19:
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 36]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w3, w0, 1
	adrp	x0, query
	add	x2, x0, :lo12:query
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L21
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	adrp	x0, word
	add	x3, x0, :lo12:word
	sxtw	x2, w1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	adrp	x0, query
	add	x2, x0, :lo12:query
	ldrsw	x0, [sp, 36]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L21
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	str	w0, [sp, 36]
	b	.L21
.L24:
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 36]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	adrp	x0, query
	add	x2, x0, :lo12:query
	ldrsw	x0, [sp, 36]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L37
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L21:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L24
	b	.L23
.L37:
	nop
.L23:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bne	.L15
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x2, x0
	adrp	x0, query
	add	x1, x0, :lo12:query
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L25
.L18:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L26
	ldr	w0, [sp, 36]
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L28
.L26:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
	b	.L28
.L31:
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 32]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w1, [x0]
	adrp	x0, query
	add	x2, x0, :lo12:query
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L38
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L28:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L31
	b	.L30
.L38:
	nop
.L30:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bne	.L15
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x2, x0
	adrp	x0, query
	add	x1, x0, :lo12:query
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L25
.L36:
	nop
.L15:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L32
.L25:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L11
	adrp	x0, query
	add	x1, x0, :lo12:query
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L11
.L35:
	nop
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L33
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
