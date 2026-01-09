_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 24]
	b	.L6
	ldr	x0, [sp, 24]
	bl	strlen
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L8
	ldr	x0, [sp]
	b	.L9
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 511
	bhi	.L11
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L13
	mov	x0, 1
	add	sp, sp, 16
	ret
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 240
	b	.L17
	add	x0, sp, 240
	str	w0, [sp, 292]
	add	x0, sp, 160
	add	x0, sp, 272
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 272
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	add	x0, sp, 272
	bl	_ZNSaIcED1Ev
	strb	wzr, [sp, 303]
	str	wzr, [sp, 296]
	b	.L18
	ldrsw	x1, [sp, 296]
	add	x0, sp, 240
	ldrb	w0, [x0]
	cmp	w0, 91
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	add	x0, sp, 32
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldrb	w0, [sp, 303]
	cmp	w0, 0
	beq	.L21
	add	x1, sp, 32
	add	x0, sp, 160
	b	.L22
	add	x1, sp, 32
	add	x0, sp, 160
	add	x2, sp, 32
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	mov	w0, 1
	strb	w0, [sp, 303]
	b	.L23
	ldrsw	x1, [sp, 296]
	add	x0, sp, 240
	ldrb	w0, [x0]
	cmp	w0, 93
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L24
	add	x0, sp, 32
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L25
	ldrb	w0, [sp, 303]
	cmp	w0, 0
	beq	.L26
	add	x1, sp, 32
	add	x0, sp, 160
	b	.L27
	add	x1, sp, 32
	add	x0, sp, 160
	add	x2, sp, 32
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	strb	wzr, [sp, 303]
	b	.L23
	ldrsw	x1, [sp, 296]
	add	x0, sp, 240
	ldrb	w1, [x0]
	add	x0, sp, 32
	ldr	w0, [sp, 296]
	add	w0, w0, 1
	str	w0, [sp, 296]
	ldr	w1, [sp, 296]
	ldr	w0, [sp, 292]
	cmp	w1, w0
	blt	.L28
	add	x0, sp, 32
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	ldrb	w0, [sp, 303]
	cmp	w0, 0
	beq	.L30
	add	x1, sp, 32
	add	x0, sp, 160
	b	.L29
	add	x1, sp, 32
	add	x0, sp, 160
	add	x0, sp, 160
	str	x0, [sp, 280]
	add	x0, sp, 96
	mov	x8, x0
	ldr	x0, [sp, 280]
	add	x0, sp, 128
	mov	x8, x0
	ldr	x0, [sp, 280]
	b	.L31
	add	x0, sp, 96
	mov	x1, x0
	add	x0, sp, 64
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 64
	add	x0, sp, 96
	add	x1, sp, 128
	add	x0, sp, 96
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L32
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
	add	x0, sp, 160
	add	x0, sp, 240
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L33
	mov	w19, 0
	add	x0, sp, 240
	mov	w0, w19
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
	b	.L38
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
	bne	.L39
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L42
	ldr	x0, [sp]
	b	.L43
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	beq	.L45
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L46
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, 0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L52
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	beq	.L55
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	sub	x0, x0, #32
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	sub	x1, x0, #32
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L57
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x0, x0, #32
	cmp	x1, x0
	beq	.L59
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	add	x1, x0, 32
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	b	.L61
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
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
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x1, x0, 32
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	bne	.L69
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
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
	beq	.L76
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L76
	mov	w0, 1
	b	.L77
	mov	w0, 0
	cmp	w0, 0
	beq	.L78
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L79
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	x0, 32
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x0, x0, x1
	add	x0, x0, 1
	str	x0, [sp, 88]
	mov	x0, 8
	str	x0, [sp, 56]
	ldr	x0, [sp, 88]
	add	x0, x0, 2
	str	x0, [sp, 64]
	add	x1, sp, 64
	add	x0, sp, 56
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	mov	x0, 32
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	lsl	x0, x0, 5
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L84
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L85
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 56
	mov	x8, x0
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	add	x0, sp, 56
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	add	x0, sp, 80
	ldr	x1, [sp, 24]
	add	x1, sp, 80
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L92
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, 1
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	sub	x19, x0, #8
	mov	x0, x1
	str	x0, [x19]
	ldr	x0, [sp, 40]
	add	x2, x0, 16
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 32]
	sub	x1, x0, #32
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 16]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L94
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, 1
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x19, x0, 8
	mov	x0, x1
	str	x0, [x19]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	lsl	x0, x0, 5
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	nop
	ldr	x19, [sp, 16]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	mov	x8, x0
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	mov	x19, x0
	nop
	add	x0, sp, 56
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L111
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L112
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	mov	x0, 32
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 24]
	add	x0, x0, 8
	str	x0, [sp, 72]
	b	.L119
	ldr	x0, [sp, 72]
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	ldr	x19, [x0]
	lsl	x0, x0, 5
	add	x19, x19, x0
	ldr	x0, [sp, 56]
	mov	x2, x0
	mov	x1, x19
	mov	x0, x20
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	bcc	.L120
	ldr	x0, [sp, 48]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	beq	.L121
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	ldr	x20, [x0, 16]
	ldr	x0, [sp, 56]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x20, [x0]
	ldr	x0, [sp, 56]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	b	.L123
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0]
	ldr	x0, [sp, 56]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	mov	x1, x19
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, x2
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	bls	.L133
	mov	w2, 1
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	ldr	x19, [sp, 40]
	mov	x0, 32
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 24]
	ldr	x3, [x2, 72]
	ldr	x2, [sp, 24]
	ldr	x2, [x2]
	sub	x2, x3, x2
	asr	x2, x2, 3
	sub	x0, x0, x2
	cmp	x1, x0
	bls	.L138
	mov	w2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, 32
	ldp	x29, x30, [sp], 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 24]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, 32
	ldp	x29, x30, [sp], 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	x0, x0, 255
	sub	x0, x1, x0
	mul	x0, x2, x0
	ldr	x1, [sp, 24]
	ldr	x2, [x1]
	ldr	x1, [sp, 24]
	ldr	x1, [x1, 8]
	sub	x1, x2, x1
	asr	x1, x1, 5
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	ldr	x2, [x1, 16]
	ldr	x1, [sp, 16]
	ldr	x1, [x1]
	sub	x1, x2, x1
	asr	x1, x1, 5
	add	x0, x0, x1
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 9223372036854775807
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	x0, x0, 1
	str	x0, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 96]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 1
	cmp	x1, x0
	bls	.L160
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x2, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L161
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L162
	mov	x0, 0
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L163
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	b	.L164
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x4, x0, 8
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	b	.L164
	ldr	x0, [sp, 56]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	add	x1, sp, 48
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	add	x0, x0, 2
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x0, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x0, x0, 1
	lsl	x1, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L165
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L166
	mov	x0, 0
	add	x0, x0, x1
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 56]
	add	x2, x0, 48
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L172
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L173
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 5
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 288230376151711743
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L188
	ldr	x1, [sp, 32]
	mov	x0, 576460752303423487
	cmp	x1, x0
	bls	.L189
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 5
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L192
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L193
	nop
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	add	x0, sp, 40
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	add	x0, sp, 40
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L216
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L219
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x3
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L223
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L223
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