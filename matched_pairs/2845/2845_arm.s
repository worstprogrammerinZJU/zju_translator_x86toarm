s:
t:
r:
reverse:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	sub	w0, w0, #1
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L2
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
addition:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strlen
	str	w0, [sp, 20]
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	strlen
	str	w0, [sp, 16]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L5
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w1, w0, 255
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	sub	w0, w0, #48
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L6
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L7
	str	wzr, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L10
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L9
	b	.L10
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L11
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L12
	str	wzr, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L13
	b	.L14
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 28]
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 24]
	and	w0, w0, 255
	add	w0, w1, w0
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 49
	bls	.L15
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #2
	and	w2, w0, 255
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L16
	str	wzr, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L20
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, r
	add	x1, x1, :lo12:r
	sxtw	x0, w0
	mov	w2, 49
	strb	w2, [x1, x0]
	b	.L19
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L19
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	adrp	x0, r
	add	x1, x0, :lo12:r
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L21
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 28]
	strb	wzr, [x1, x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L23
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	reverse
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	reverse
	bl	addition
	adrp	x0, r
	add	x0, x0, :lo12:r
	bl	reverse
	adrp	x0, r
	add	x2, x0, :lo12:r
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret