main:
	mov	x12, 10016
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 16
	bl	gets
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 10016
	add	sp, sp, x12
	ret