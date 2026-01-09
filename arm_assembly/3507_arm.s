main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	add	x1, sp, 24
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 52]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 5
	ble	.L5
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L11
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	sub	w1, w1, w0
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	scvtf	d1, w0
	fmov	d0, 4.0e+0
	fdiv	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L8
	nop
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret