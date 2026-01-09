main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	strb	wzr, [sp, 63]
	ldr	w0, [sp, 44]
	str	w0, [sp, 56]
	b	.L2
	mov	w0, 1
	strb	w0, [sp, 55]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 56]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 56]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	mov	w0, 2
	str	w0, [sp, 48]
	b	.L4
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 48]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 48]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	strb	wzr, [sp, 55]
	b	.L6
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	scvtf	d8, w0
	ldr	w0, [sp, 56]
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldrb	w0, [sp, 55]
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 56]
	cmp	w0, 1
	beq	.L3
	ldr	w1, [sp, 56]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L8
	ldrb	w0, [sp, 63]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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