n:
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	b	.L2
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	asr	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret