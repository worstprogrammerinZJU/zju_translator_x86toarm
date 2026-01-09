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
_ZL3INF:
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 64
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
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	str	x0, [sp, 24]
	ldr	x0, [sp, 104]
	str	x0, [sp, 16]
	b	.L6
	add	x0, sp, 24
	ldrb	w0, [x0]
	strb	w0, [sp, 103]
	ldrb	w0, [sp, 103]
	cmp	w0, 104
	bne	.L7
	add	x2, sp, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	add	x0, sp, 32
	ldrb	w1, [sp, 103]
	b	.L10
	ldrb	w0, [sp, 103]
	cmp	w0, 101
	bne	.L11
	add	x0, sp, 32
	sub	x1, x0, #1
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 104
	bne	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	cmp	w0, 0
	beq	.L13
	add	x0, sp, 32
	ldrb	w1, [sp, 103]
	b	.L10
	ldrb	w0, [sp, 103]
	cmp	w0, 108
	bne	.L14
	add	x0, sp, 32
	sub	x1, x0, #1
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 101
	bne	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L16
	add	x0, sp, 32
	ldrb	w1, [sp, 103]
	b	.L10
	ldrb	w0, [sp, 103]
	cmp	w0, 108
	bne	.L17
	add	x0, sp, 32
	sub	x1, x0, #2
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 101
	bne	.L17
	add	x0, sp, 32
	sub	x1, x0, #1
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 108
	bne	.L17
	mov	w0, 1
	b	.L18
	mov	w0, 0
	cmp	w0, 0
	beq	.L19
	add	x0, sp, 32
	ldrb	w1, [sp, 103]
	b	.L10
	ldrb	w0, [sp, 103]
	cmp	w0, 111
	bne	.L20
	add	x0, sp, 32
	sub	x1, x0, #1
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 108
	bne	.L20
	add	x0, sp, 32
	sub	x1, x0, #2
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 108
	bne	.L20
	add	x0, sp, 32
	sub	x1, x0, #3
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 101
	bne	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	beq	.L10
	add	x0, sp, 32
	ldrb	w1, [sp, 103]
	add	x0, sp, 24
	add	x1, sp, 16
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	add	x2, sp, 32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 32
	add	x0, sp, 64
	mov	w0, 0
	ldp	x29, x30, [sp], 112
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
	b	.L29
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
	bne	.L30
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
	beq	.L33
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L34
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
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
	beq	.L46
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L46
	mov	w0, 1
	b	.L47
	mov	w0, 0
	cmp	w0, 0
	beq	.L48
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L49
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
	add	sp, sp, 16
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
	bne	.L60
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L60
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