main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	wzr, [sp, 56]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 40]
	str	w0, [sp, 52]
	b	.L2
	str	wzr, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 44]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 44]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	b	.L4
	ldr	w0, [sp, 48]
	add	w0, w0, 2
	str	w0, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	scvtf	d8, w0
	ldr	w0, [sp, 52]
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 48]
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 60]
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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