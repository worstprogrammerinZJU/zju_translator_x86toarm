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
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	d8, [sp, 24]
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 92]
	cmp	w0, 1
	bne	.L6
	add	x0, sp, 32
	str	xzr, [sp, 136]
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 80
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	add	x0, sp, 32
	sub	x0, x0, #1
	str	x0, [sp, 128]
	b	.L7
	ldr	x1, [sp, 128]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	isdigit
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	x1, [sp, 128]
	add	x0, sp, 32
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	str	x0, [sp, 120]
	b	.L9
	ldr	x1, [sp, 128]
	add	x0, sp, 32
	ldrb	w0, [x0]
	sub	w0, w0, #38
	sxtw	x0, w0
	str	x0, [sp, 120]
	ldr	d0, [sp, 120]
	scvtf	d8, d0
	ldr	x19, [sp, 80]
	add	x0, sp, 32
	mov	x1, x0
	ldr	x0, [sp, 128]
	sub	x0, x1, x0
	sub	x0, x0, #1
	mov	x1, x0
	mov	x0, x19
	fmul	d1, d8, d0
	ldr	d0, [sp, 136]
	scvtf	d0, d0
	fadd	d0, d1, d0
	fcvtzs	d0, d0
	str	d0, [sp, 136]
	ldr	x0, [sp, 128]
	sub	x0, x0, #1
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	cmp	x0, 0
	bge	.L10
	ldr	x1, [sp, 136]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	add	x0, sp, 32
	b	.L11
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x0, sp, 96
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 96
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 96
	bl	_ZNSaIcED1Ev
	b	.L12
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	cmp	x0, 9
	bgt	.L13
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	add	w0, w0, 48
	strb	w0, [sp, 119]
	b	.L14
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	add	w0, w0, 55
	strb	w0, [sp, 119]
	add	x0, sp, 32
	ldrb	w1, [sp, 119]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	sdiv	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L15
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
	mov	w0, 0
	ldr	d8, [sp, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
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
	b	.L20
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
	bne	.L21
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	d0, [sp, 24]
	scvtf	d2, d0
	ldr	d0, [sp, 16]
	ucvtf	d0, d0
	fmov	d1, d0
	fmov	d0, d2
	bl	pow
	ldp	x29, x30, [sp], 32
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
	beq	.L26
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L27
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 40
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
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
	beq	.L32
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L32
	mov	w0, 1
	b	.L33
	mov	w0, 0
	cmp	w0, 0
	beq	.L34
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L35
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
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L43
	add	x0, sp, 32
	b	.L41
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	add	x0, sp, 32
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L42
	b	.L38
	nop
	ldp	x29, x30, [sp], 48
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
	cset	w0, eq
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 40
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	nop
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	add	x0, sp, 47
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	strb	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L68
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L68
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