main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	d8, [sp, 16]
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 80
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 152]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 64]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 136]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 32]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 128]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 72]
	fsub	d0, d1, d0
	mov	w0, 2
	fmov	d8, d0
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 64]
	fsub	d0, d1, d0
	mov	w0, 2
	fadd	d0, d8, d0
	bl	sqrt
	fmov	d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	mov	w0, 2
	fmov	d8, d0
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 32]
	fsub	d0, d1, d0
	mov	w0, 2
	fadd	d0, d8, d0
	bl	sqrt
	fmov	d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d1, [sp, 152]
	ldr	d0, [sp, 136]
	fsub	d0, d1, d0
	mov	w0, 2
	fmov	d8, d0
	ldr	d1, [sp, 144]
	ldr	d0, [sp, 128]
	fsub	d0, d1, d0
	mov	w0, 2
	fadd	d0, d8, d0
	bl	sqrt
	str	d0, [sp, 104]
	ldr	d1, [sp, 120]
	ldr	d0, [sp, 112]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 96]
	fcmpe	d1, d0
	bgt	.L6
	b	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	d0, [sp, 24]
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	scvtf	d0, w0
	fmov	d1, d0
	ldr	d0, [sp, 24]
	bl	pow
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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