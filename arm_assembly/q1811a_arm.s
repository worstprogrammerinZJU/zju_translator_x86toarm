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
	str	x19, [sp, 16]
	add	x0, sp, 116
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 300]
	b	.L6
	add	x0, sp, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x0, sp, 103
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 296]
	add	x0, sp, 120
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 120
	add	x3, sp, 64
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 120
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 292]
	b	.L7
	ldrsw	x1, [sp, 292]
	add	x0, sp, 32
	ldrb	w1, [x0]
	ldrb	w0, [sp, 103]
	cmp	w1, w0
	bcs	.L8
	ldr	w0, [sp, 296]
	cmp	w0, 0
	bne	.L8
	mov	w0, 1
	b	.L9
	mov	w0, 0
	cmp	w0, 0
	beq	.L10
	ldrsw	x1, [sp, 292]
	add	x0, sp, 32
	add	x2, sp, 192
	mov	x8, x2
	mov	x2, x1
	mov	x1, 0
	ldrb	w2, [sp, 103]
	add	x0, sp, 192
	add	x1, sp, 160
	mov	x8, x1
	mov	w1, w2
	ldrsw	x1, [sp, 292]
	add	x0, sp, 32
	add	x2, sp, 224
	mov	x8, x2
	mov	x2, -1
	add	x1, sp, 224
	add	x0, sp, 160
	add	x2, sp, 128
	mov	x8, x2
	add	x1, sp, 128
	add	x0, sp, 32
	add	x0, sp, 128
	add	x0, sp, 224
	add	x0, sp, 160
	add	x0, sp, 192
	mov	w0, 1
	str	w0, [sp, 296]
	b	.L11
	ldr	w0, [sp, 292]
	add	w0, w0, 1
	str	w0, [sp, 292]
	ldrsw	x19, [sp, 292]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 296]
	cmp	w0, 0
	bne	.L13
	ldrb	w2, [sp, 103]
	add	x0, sp, 32
	add	x1, sp, 256
	mov	x8, x1
	mov	w1, w2
	add	x1, sp, 256
	add	x0, sp, 32
	add	x0, sp, 256
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	str	w0, [sp, 300]
	ldr	w0, [sp, 116]
	ldr	w1, [sp, 300]
	cmp	w1, w0
	ble	.L14
	mov	w0, 0
	ldr	x19, [sp, 16]
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
	b	.L19
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
	bne	.L20
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	wzr, [sp, 63]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 63]
	cmp	w0, 0
	beq	.L23
	ldr	x0, [sp, 40]
	mov	x20, x0
	ldr	x0, [sp, 32]
	add	x0, x20, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bls	.L24
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bhi	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	beq	.L23
	ldr	x2, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	b	.L26
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	beq	.L28
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L29
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
	beq	.L39
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L39
	mov	w0, 1
	b	.L40
	mov	w0, 0
	cmp	w0, 0
	beq	.L41
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L42
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
	bne	.L51
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L51
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