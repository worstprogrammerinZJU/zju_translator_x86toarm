main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 64
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 14]
	str	q0, [x0, 14]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 96
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 124]
	b	.L3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 120]
	b	.L4
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L5
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	str	wzr, [sp, 120]
	b	.L7
	str	wzr, [sp, 124]
	b	.L8
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	str	wzr, [sp, 116]
	b	.L9
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L10
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 25
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L11
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 124]
	b	.L13
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 120]
	b	.L14
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 74
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L15
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	str	wzr, [sp, 120]
	b	.L17
	str	wzr, [sp, 124]
	b	.L18
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x0, x0, 10
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	str	wzr, [sp, 116]
	b	.L19
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L20
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 45
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L21
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L22
	str	wzr, [sp, 124]
	b	.L23
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 120]
	b	.L24
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	add	x1, sp, 84
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L25
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x0, [sp, 124]
	add	x1, sp, 96
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L26
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	printf
	add	x1, sp, 96
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 112]
	cmp	w0, 0
	bne	.L27
	ldrb	w0, [sp, 96]
	cmp	w0, 48
	bne	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret