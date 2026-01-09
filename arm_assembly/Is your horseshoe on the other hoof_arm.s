main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 44]
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
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	mov	w2, w0
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	w0, w2, w0
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 28]
	cmp	w2, w1
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 32]
	cmp	w2, w1
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 28]
	cmp	w2, w1
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 28]
	cmp	w2, w1
	cset	w1, eq
	and	w1, w1, 255
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 6
	bne	.L2
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	b	.L3
	ldr	w0, [sp, 44]
	cmp	w0, 3
	bne	.L3
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L7
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L7
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