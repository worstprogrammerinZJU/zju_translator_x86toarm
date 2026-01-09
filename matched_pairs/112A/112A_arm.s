main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	mov	x19, x0
	add	x0, sp, 64
	mov	x20, x0
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:toupper
	ldr	x3, [x0, #:got_lo12:toupper]
	mov	x2, x1
	mov	x1, x20
	mov	x0, x19
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x20, x0
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:toupper
	ldr	x3, [x0, #:got_lo12:toupper]
	mov	x2, x1
	mov	x1, x20
	mov	x0, x19
	add	x1, sp, 32
	add	x0, sp, 64
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L3
	add	x1, sp, 32
	add	x0, sp, 64
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L3
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	add	x0, sp, 32
	add	x0, sp, 64
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	b	.L7
	ldr	x19, [sp, 32]
	add	x0, sp, 56
	ldrb	w0, [x0]
	blr	x19
	and	w19, w0, 255
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	add	x0, sp, 56
	add	x0, sp, 40
	add	x1, sp, 48
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, gt
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	lsr	w0, w0, 31
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L24
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L24
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