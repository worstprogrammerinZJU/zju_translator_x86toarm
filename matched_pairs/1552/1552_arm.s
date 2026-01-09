main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 108]
	str	wzr, [sp, 96]
	b	.L3
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	add	x1, sp, 24
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 104]
	b	.L5
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	lsl	w0, w0, 1
	str	w0, [sp, 92]
	str	wzr, [sp, 100]
	b	.L6
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	b	.L8
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 96]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmn	w0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret