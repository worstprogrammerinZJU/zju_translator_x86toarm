L:
N:
irregularWord:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	adrp	x0, N
	add	x2, x0, :lo12:N
	adrp	x0, L
	add	x1, x0, :lo12:L
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, irregularWord
	add	x1, x1, :lo12:irregularWord
	add	x3, x0, x1
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x0, 30
	adrp	x0, irregularWord
	add	x0, x0, :lo12:irregularWord
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	adrp	x0, L
	add	x0, x0, :lo12:L
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 60]
	b	.L4
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L5
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, irregularWord
	add	x1, x1, :lo12:irregularWord
	add	x1, x0, x1
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, L
	add	x0, x0, :lo12:L
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L8
	b	.L7
	nop
	adrp	x0, L
	add	x0, x0, :lo12:L
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bge	.L9
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x0, 30
	adrp	x0, irregularWord
	add	x0, x0, :lo12:irregularWord
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L10
	str	wzr, [sp, 56]
	b	.L11
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L12
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 121
	bne	.L13
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 97
	beq	.L13
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 101
	beq	.L13
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L13
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L13
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 117
	beq	.L13
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L10
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L14
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 115
	beq	.L14
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 120
	beq	.L14
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 104
	bne	.L15
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 99
	beq	.L14
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 115
	bne	.L15
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	b	.L10
	ldrsw	x0, [sp, 56]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret