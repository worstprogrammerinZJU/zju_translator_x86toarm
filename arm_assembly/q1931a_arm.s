	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	b	.L4
	ldr	x0, [sp, 24]
	bl	strlen
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 300]
	b	.L6
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 48]
	cmp	w0, 52
	ble	.L7
	ldr	w0, [sp, 48]
	and	w0, w0, 255
	add	w0, w0, 44
	strb	w0, [sp, 297]
	add	x0, sp, 56
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 56
	add	x3, sp, 16
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	add	x0, sp, 16
	add	x1, sp, 96
	mov	x8, x1
	ldrb	w1, [sp, 297]
	add	x2, sp, 96
	add	x0, sp, 64
	mov	x8, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	add	x1, sp, 64
	add	x0, sp, 16
	add	x0, sp, 64
	add	x0, sp, 96
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 16
	b	.L8
	add	x0, sp, 128
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 128
	add	x3, sp, 16
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 128
	bl	_ZNSaIcED1Ev
	add	x0, sp, 16
	add	x1, sp, 136
	mov	x8, x1
	mov	w1, 97
	add	x1, sp, 136
	add	x0, sp, 16
	add	x0, sp, 136
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 26
	ble	.L9
	ldr	w0, [sp, 48]
	and	w0, w0, 255
	add	w0, w0, 70
	strb	w0, [sp, 298]
	add	x0, sp, 16
	add	x1, sp, 200
	mov	x8, x1
	ldrb	w1, [sp, 298]
	add	x0, sp, 200
	add	x1, sp, 168
	mov	x8, x1
	mov	w1, 122
	add	x1, sp, 168
	add	x0, sp, 16
	add	x0, sp, 168
	add	x0, sp, 200
	b	.L10
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	and	w0, w0, 255
	add	w0, w0, 96
	strb	w0, [sp, 299]
	add	x0, sp, 16
	add	x1, sp, 264
	mov	x8, x1
	mov	w1, 97
	add	x0, sp, 264
	add	x1, sp, 232
	mov	x8, x1
	ldrb	w1, [sp, 299]
	add	x1, sp, 232
	add	x0, sp, 16
	add	x0, sp, 232
	add	x0, sp, 264
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 16
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	str	w0, [sp, 300]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 300]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 304
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	b	.L16
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [sp, 39]
	add	x1, sp, 39
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L20
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L21
	mov	x0, 1
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldrb	w2, [sp, 39]
	mov	x1, 1
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldrb	w2, [sp, 39]
	mov	x1, 1
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L33
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L33
	mov	w0, 1
	b	.L34
	mov	w0, 0
	cmp	w0, 0
	beq	.L35
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L36
	add	x0, sp, 56
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L45
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L45
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