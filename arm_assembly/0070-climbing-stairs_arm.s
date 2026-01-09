climbStairs:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 3
	bgt	.L2
	ldr	w0, [sp, 12]
	b	.L3
	mov	w0, 2
	str	w0, [sp, 28]
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 4
	str	w0, [sp, 20]
	b	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	ret