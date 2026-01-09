main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 92]
	b	.L3
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L4
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L5
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w0, [x0]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	mov	w0, w2
	bl	abs
	str	w0, [x19]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 84]
	b	.L7
	str	wzr, [sp, 80]
	b	.L8
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 80]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L9
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 80]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 80]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 84]
	sub	w0, w1, w0
	sub	w0, w0, #2
	ldr	w1, [sp, 80]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 44]
	sub	w0, w0, #2
	ldr	w1, [sp, 84]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	b	.L12
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	add	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L13
	ldr	w1, [sp, 76]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	w0, [sp, 48]
	sub	w1, w0, #1
	str	w1, [sp, 48]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret