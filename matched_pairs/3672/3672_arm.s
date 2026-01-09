M:
T:
U:
F:
D:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 20]
	adrp	x0, D
	add	x5, x0, :lo12:D
	adrp	x0, F
	add	x4, x0, :lo12:F
	adrp	x0, U
	add	x3, x0, :lo12:U
	adrp	x0, T
	add	x2, x0, :lo12:T
	adrp	x0, M
	add	x1, x0, :lo12:M
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	add	x0, sp, 19
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L9
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 19]
	cmp	w0, 117
	beq	.L5
	ldrb	w0, [sp, 19]
	cmp	w0, 100
	bne	.L6
	adrp	x0, U
	add	x0, x0, :lo12:U
	ldr	w1, [x0]
	adrp	x0, D
	add	x0, x0, :lo12:D
	ldr	w0, [x0]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L4
	ldrb	w0, [sp, 19]
	cmp	w0, 102
	bne	.L4
	adrp	x0, F
	add	x0, x0, :lo12:F
	ldr	w0, [x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L4
	nop
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret