main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 120]
	str	wzr, [sp, 116]
	str	wzr, [sp, 124]
	b	.L3
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 120]
	b	.L4
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	bne	.L5
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	b	.L6
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 116]
	add	w1, w0, 1
	str	w1, [sp, 116]
	ldr	w2, [sp, 108]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 64
	str	w2, [x1, x0]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 124]
	str	wzr, [sp, 120]
	b	.L10
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 120]
	cmp	w0, 0
	bne	.L13
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L14
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 112]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret