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
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 64
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	sub	x1, x0, #1
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 53
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	add	x0, sp, 64
	sub	x1, x0, #1
	add	x0, sp, 64
	mov	x1, x0
	mov	w0, 48
	strb	w0, [x1]
	b	.L8
	add	x0, sp, 64
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	add	x2, sp, 64
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	b	.L8
	add	x0, sp, 64
	sub	x1, x0, #2
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 57
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	add	x0, sp, 64
	sub	x1, x0, #2
	add	x0, sp, 64
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w19, w0, 255
	add	x0, sp, 64
	sub	x1, x0, #2
	add	x0, sp, 64
	mov	w1, w19
	strb	w1, [x0]
	add	x0, sp, 64
	sub	x1, x0, #1
	add	x0, sp, 64
	mov	x1, x0
	mov	w0, 48
	strb	w0, [x1]
	b	.L8
	add	x0, sp, 96
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 96
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	add	x0, sp, 96
	bl	_ZNSaIcED1Ev
	strb	wzr, [sp, 143]
	add	x0, sp, 64
	sub	w0, w0, #2
	str	w0, [sp, 136]
	b	.L11
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 57
	bne	.L12
	ldrb	w0, [sp, 143]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	w0, 1
	b	.L13
	mov	w0, 0
	cmp	w0, 0
	beq	.L14
	add	x2, sp, 32
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	b	.L15
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 57
	beq	.L16
	ldrb	w0, [sp, 143]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	mov	w0, 1
	b	.L17
	mov	w0, 0
	cmp	w0, 0
	beq	.L18
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	add	w0, w0, 1
	and	w1, w0, 255
	add	x0, sp, 32
	mov	w0, 1
	strb	w0, [sp, 143]
	b	.L15
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w1, [x0]
	add	x0, sp, 32
	ldr	w0, [sp, 136]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 0
	bge	.L19
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	add	x0, sp, 32
	add	x1, sp, 104
	mov	x8, x1
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	add	x1, sp, 104
	add	x0, sp, 32
	add	x0, sp, 104
	add	x1, sp, 32
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w19, 0
	add	x0, sp, 64
	mov	w0, w19
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
	b	.L25
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
	bne	.L26
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
	beq	.L29
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L30
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 32]
	add	x0, sp, 64
	add	x1, sp, 56
	mov	x8, x1
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	add	x0, sp, 64
	bl	_ZNSaIcED1Ev
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	beq	.L37
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L37
	mov	w0, 1
	b	.L38
	mov	w0, 0
	cmp	w0, 0
	beq	.L39
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L40
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	mov	x8, x19
	ldr	x0, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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
	bne	.L50
	add	x0, sp, 32
	b	.L48
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	add	x0, sp, 32
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L49
	b	.L45
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
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSaIcEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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
	bne	.L77
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L77
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