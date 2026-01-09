top:
up:
stack:
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w1, [x0]
	adrp	x0, up
	add	x0, x0, :lo12:up
	str	w1, [x0]
	b	.L4
	add	x2, sp, 24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L4
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L4
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w1, [x0]
	adrp	x0, up
	add	x0, x0, :lo12:up
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L7
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L4
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x2, sp, 24
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret