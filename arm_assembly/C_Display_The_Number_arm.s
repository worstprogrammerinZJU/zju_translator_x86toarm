_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 40]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 40]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x19, w0
	add	x0, sp, 80
	bl	_ZNSaIcEC1Ev
	add	x1, sp, 80
	add	x0, sp, 48
	mov	x3, x1
	mov	w2, 49
	mov	x1, x19
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 48
	add	x0, sp, 80
	bl	_ZNSaIcED1Ev
	b	.L3
	ldr	w0, [sp, 40]
	sub	w0, w0, #3
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x19, w0
	add	x0, sp, 152
	bl	_ZNSaIcEC1Ev
	add	x1, sp, 152
	add	x0, sp, 120
	mov	x3, x1
	mov	w2, 49
	mov	x1, x19
	add	x0, sp, 120
	add	x1, sp, 88
	mov	x8, x1
	mov	x1, x0
	mov	w0, 55
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 88
	add	x0, sp, 120
	add	x0, sp, 152
	bl	_ZNSaIcED1Ev
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	strb	w0, [sp, 47]
	str	x1, [sp, 32]
	ldrb	w3, [sp, 47]
	mov	x2, 1
	mov	x1, 0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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