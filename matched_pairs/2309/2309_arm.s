main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 36]
	b	.L3
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	lsl	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	add	w3, w0, 1
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sub	w0, w0, #1
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret