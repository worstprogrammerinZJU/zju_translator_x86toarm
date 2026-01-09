main:
	stp	x29, x30, [sp, -432]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 424]
	add	x0, sp, 420
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 428]
	b	.L3
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 428]
	add	w0, w0, 1
	str	w0, [sp, 428]
	ldr	w0, [sp, 420]
	ldr	w1, [sp, 428]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 424]
	add	w1, w0, 1
	str	w1, [sp, 424]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 428]
	b	.L5
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 428]
	add	w0, w0, 2
	str	w0, [sp, 428]
	ldr	w0, [sp, 420]
	ldr	w1, [sp, 428]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 420]
	sub	w1, w0, #1
	ldr	w0, [sp, 420]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	sub	w0, w1, w0
	str	w0, [sp, 428]
	b	.L7
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 428]
	sub	w0, w0, #2
	str	w0, [sp, 428]
	ldr	w0, [sp, 428]
	cmp	w0, 0
	bgt	.L8
	add	x0, sp, 420
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 420]
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 432
	ret