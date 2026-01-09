n:
word:
query:
cmp:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L2
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
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L7
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
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
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
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L24
	b	.L23
	nop
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
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
	b	.L28
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
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L31
	b	.L30
	nop
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
	nop
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L32
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
	nop
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L33
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret