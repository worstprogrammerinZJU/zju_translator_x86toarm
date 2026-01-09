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
	mov	x12, 32128
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 28672
	add	x0, x0, 3392
	add	x0, sp, 28672
	add	x0, x0, 3392
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	mov	x19, 999
	mov	x20, x0
	b	.L6
	mov	x0, x20
	add	x20, x20, 32
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L7
	add	x0, sp, 16384
	str	wzr, [x0, 15740]
	add	x0, sp, 28672
	add	x0, x0, 3392
	add	x1, sp, 16384
	str	w0, [x1, 15720]
	add	x0, sp, 16384
	str	wzr, [x0, 15736]
	add	x0, sp, 16384
	str	wzr, [x0, 15732]
	add	x0, sp, 28672
	add	x0, x0, 3424
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 28672
	add	x0, x0, 3424
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 28672
	add	x0, x0, 3424
	bl	_ZNSaIcED1Ev
	add	x0, sp, 16384
	str	wzr, [x0, 15728]
	b	.L8
	add	x0, sp, 16384
	ldrsw	x1, [x0, 15728]
	add	x0, sp, 28672
	add	x0, x0, 3392
	ldrb	w0, [x0]
	cmp	w0, 76
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	add	x0, sp, 16384
	ldr	w0, [x0, 15736]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15736]
	b	.L10
	add	x0, sp, 16384
	ldr	w0, [x0, 15732]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15732]
	add	x0, sp, 16384
	ldrsw	x1, [x0, 15728]
	add	x0, sp, 28672
	add	x0, x0, 3392
	ldrb	w1, [x0]
	add	x0, sp, 32
	add	x0, sp, 16384
	ldr	w1, [x0, 15736]
	add	x0, sp, 16384
	ldr	w0, [x0, 15732]
	cmp	w1, w0
	bne	.L11
	add	x1, sp, 64
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15740]
	lsl	x0, x0, 5
	add	x0, x1, x0
	add	x1, sp, 32
	add	x2, sp, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x0, sp, 16384
	ldr	w0, [x0, 15740]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15740]
	add	x0, sp, 16384
	str	wzr, [x0, 15736]
	add	x0, sp, 16384
	str	wzr, [x0, 15732]
	add	x0, sp, 16384
	ldr	w0, [x0, 15728]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15728]
	add	x0, sp, 16384
	ldr	w1, [x0, 15728]
	add	x0, sp, 16384
	ldr	w0, [x0, 15720]
	cmp	w1, w0
	blt	.L12
	add	x0, sp, 16384
	ldr	w1, [x0, 15740]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 16384
	str	wzr, [x0, 15724]
	b	.L13
	add	x1, sp, 64
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15724]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 16384
	ldr	w0, [x0, 15724]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15724]
	add	x0, sp, 16384
	ldr	w1, [x0, 15724]
	add	x0, sp, 16384
	ldr	w0, [x0, 15740]
	cmp	w1, w0
	blt	.L14
	add	x0, sp, 32
	add	x19, sp, 64
	mov	x0, 32000
	add	x0, x19, x0
	mov	x19, x0
	add	x0, sp, 64
	cmp	x19, x0
	beq	.L18
	sub	x19, x19, #32
	mov	x0, x19
	b	.L16
	nop
	add	x0, sp, 28672
	add	x0, x0, 3392
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp]
	mov	x12, 32128
	add	sp, sp, x12
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
	b	.L22
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
	bne	.L23
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
	beq	.L31
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L31
	mov	w0, 1
	b	.L32
	mov	w0, 0
	cmp	w0, 0
	beq	.L33
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L34
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
	bne	.L43
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L43
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