	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L5
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
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	strb	wzr, [sp, 63]
	strb	wzr, [sp, 62]
	add	x1, sp, 36
	add	x0, sp, 40
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [sp, 48]
	add	x1, sp, 36
	add	x0, sp, 40
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldr	x0, [sp, 48]
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	str	w0, [sp, 56]
	b	.L6
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	strb	w0, [sp, 62]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L9
	ldrb	w0, [sp, 63]
	cmp	w0, 0
	beq	.L10
	ldrb	w0, [sp, 62]
	cmp	w0, 0
	bne	.L11
	ldrb	w0, [sp, 63]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldrb	w0, [sp, 62]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L5
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L17
	ldr	x0, [sp]
	b	.L18
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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