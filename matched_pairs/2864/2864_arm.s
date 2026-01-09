student:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 28]
	b	.L3
	str	wzr, [sp, 24]
	b	.L4
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x2, x0
	adrp	x0, student
	add	x0, x0, :lo12:student
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 24]
	b	.L7
	str	wzr, [sp, 28]
	b	.L8
	adrp	x0, student
	add	x3, x0, :lo12:student
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L19
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	b	.L10
	nop
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L20
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L14
	b	.L13
	nop
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L15
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L16
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L17
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret