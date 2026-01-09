Dist:
N:
M:
degree:
_Z14Floyd_Warshalli:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 20]
	b	.L2
	str	wzr, [sp, 28]
	b	.L3
	str	wzr, [sp, 24]
	b	.L4
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
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
	bne	.L5
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	ldrsw	x2, [sp, 20]
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
	beq	.L6
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 20]
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
	beq	.L6
	mov	w4, 1
	b	.L7
	mov	w4, 0
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
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
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L10
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, M
	add	x2, x0, :lo12:M
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L12
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	ldr	w0, [sp, 16]
	sub	w2, w0, #1
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L13
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	bl	_Z14Floyd_Warshalli
	str	wzr, [sp, 28]
	b	.L14
	str	wzr, [sp, 24]
	b	.L15
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
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
	cmp	w0, 1
	bne	.L16
	adrp	x0, degree
	add	x0, x0, :lo12:degree
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, degree
	add	x0, x0, :lo12:degree
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, degree
	add	x0, x0, :lo12:degree
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, degree
	add	x0, x0, :lo12:degree
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L19
	adrp	x0, degree
	add	x0, x0, :lo12:degree
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	sub	w0, w0, #1
	cmp	w1, w0
	bne	.L20
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L21
	ldr	w1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret