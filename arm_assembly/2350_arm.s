main:
	sub	sp, sp, #1040
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 1020
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1036]
	b	.L2
	add	x0, sp, 1016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 1028]
	str	wzr, [sp, 1032]
	b	.L3
	add	x1, sp, 16
	ldrsw	x0, [sp, 1032]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 1032]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 1028]
	add	w0, w0, w1
	str	w0, [sp, 1028]
	ldr	w0, [sp, 1032]
	add	w0, w0, 1
	str	w0, [sp, 1032]
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1032]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1028]
	sdiv	w0, w1, w0
	str	w0, [sp, 1028]
	str	wzr, [sp, 1024]
	str	wzr, [sp, 1032]
	b	.L5
	ldrsw	x0, [sp, 1032]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 1028]
	cmp	w0, w1
	bge	.L6
	ldr	w0, [sp, 1024]
	add	w0, w0, 1
	str	w0, [sp, 1024]
	ldr	w0, [sp, 1032]
	add	w0, w0, 1
	str	w0, [sp, 1032]
	ldr	w0, [sp, 1016]
	ldr	w1, [sp, 1032]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 1024]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	w0, [sp, 1016]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	mov	w1, 37
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 1036]
	add	w0, w0, 1
	str	w0, [sp, 1036]
	ldr	w0, [sp, 1020]
	ldr	w1, [sp, 1036]
	cmp	w1, w0
	blt	.L8
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 1040
	ret