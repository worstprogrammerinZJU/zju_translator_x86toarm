f:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L2
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L14
	ldr	w0, [sp, 44]
	mul	w0, w0, w0
	str	w0, [sp, 40]
	b	.L5
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	mov	w0, 16959
	movk	w0, 0xf, lsl 16
	cmp	w1, w0
	ble	.L6
	b	.L4
	nop
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1000
	ble	.L7
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L8
	str	wzr, [sp, 44]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	b	.L9
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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