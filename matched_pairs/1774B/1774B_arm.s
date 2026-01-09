_ZL3INF:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 32]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L3
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	sdiv	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L4
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	sdiv	w0, w1, w0
	str	w0, [sp, 60]
	str	wzr, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 55]
	str	wzr, [sp, 48]
	b	.L5
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L6
	strb	wzr, [sp, 55]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 32]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 32]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L9
	strb	wzr, [sp, 55]
	ldrb	w0, [sp, 55]
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	b	.L2
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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