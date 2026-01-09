main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 44
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 60]
	b	.L3
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bgt	.L5
	b	.L6
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 48]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 48]
	cmp	w0, 1
	bgt	.L8
	ldr	w0, [sp, 44]
	scvtf	d8, w0
	ldr	w1, [sp, 60]
	mov	w0, 2
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 56]
	sub	w1, w0, #1
	str	w1, [sp, 56]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	ldr	w0, [sp, 24]
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