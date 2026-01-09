main:
	sub	sp, sp, #4064
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 4000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x2, sp, 4032
	add	x1, sp, 4028
	add	x0, sp, 4036
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 4060]
	b	.L2
	add	x0, sp, 4040
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w2, [sp, 4040]
	ldrsw	x0, [sp, 4060]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L3
	mov	w0, 1
	str	w0, [sp, 4060]
	b	.L4
	str	wzr, [sp, 4040]
	b	.L5
	ldr	w1, [sp, 4040]
	ldr	w0, [sp, 4036]
	mul	w0, w1, w0
	str	w0, [sp, 4048]
	ldr	w1, [sp, 4028]
	ldr	w0, [sp, 4048]
	add	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 4060]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 4060]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L24
	str	wzr, [sp, 4052]
	b	.L8
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4052]
	mul	w0, w1, w0
	str	w0, [sp, 4044]
	str	wzr, [sp, 4056]
	b	.L9
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 4060]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 4060]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L25
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L12
	b	.L11
	nop
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 4052]
	add	w0, w0, 1
	str	w0, [sp, 4052]
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4052]
	cmp	w1, w0
	blt	.L15
	b	.L14
	nop
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4052]
	cmp	w1, w0
	bne	.L7
	str	wzr, [sp, 4056]
	b	.L16
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4028]
	cmp	w1, w0
	bge	.L17
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4048]
	add	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 4060]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 4060]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L27
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L19
	b	.L18
	nop
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	bne	.L7
	ldr	w1, [sp, 4060]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	b	.L23
	nop
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	bgt	.L21
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
	ldr	w0, [sp, 4028]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L22
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4064
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L30
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L30
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret