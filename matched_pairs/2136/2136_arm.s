main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	add	x0, sp, 104
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 220]
	b	.L2
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 216]
	b	.L3
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L4
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L4
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldr	w0, [sp, 220]
	cmp	w0, 3
	ble	.L6
	ldr	w0, [sp, 104]
	str	w0, [sp, 216]
	mov	w0, 1
	str	w0, [sp, 220]
	b	.L7
	ldrsw	x0, [sp, 220]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 216]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 220]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	str	w0, [sp, 216]
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldr	w0, [sp, 220]
	cmp	w0, 25
	ble	.L9
	ldr	w0, [sp, 216]
	str	w0, [sp, 220]
	b	.L10
	str	wzr, [sp, 212]
	b	.L11
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	bne	.L12
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L13
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 212]
	add	w0, w0, 1
	str	w0, [sp, 212]
	ldr	w0, [sp, 212]
	cmp	w0, 24
	ble	.L14
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	bne	.L15
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	ldrsw	x0, [sp, 212]
	lsl	x0, x0, 2
	add	x1, sp, 104
	str	w2, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L16
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 220]
	sub	w0, w0, #1
	str	w0, [sp, 220]
	ldr	w0, [sp, 220]
	cmp	w0, 0
	bgt	.L17
	str	wzr, [sp, 220]
	b	.L18
	ldr	w0, [sp, 220]
	add	w0, w0, 65
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldr	w0, [sp, 220]
	cmp	w0, 24
	ble	.L19
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 224
	ret