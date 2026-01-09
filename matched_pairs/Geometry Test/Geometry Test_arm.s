main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	d8, d9, [sp, 16]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 40]
	lsl	x1, x0, 1
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bgt	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	x0, [sp, 40]
	fmov	d0, x0
	shl	d0, d0, 1
	scvtf	d8, d0
	ldr	x0, [sp, 32]
	mov	w1, 2
	fmov	d9, d0
	ldr	x0, [sp, 32]
	mov	w1, 2
	fadd	d0, d9, d0
	bl	sqrt
	fcmpe	d8, d0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L3
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	d8, d9, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	d0, [sp, 24]
	scvtf	d0, d0
	ldr	w0, [sp, 20]
	scvtf	d1, w0
	bl	pow
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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