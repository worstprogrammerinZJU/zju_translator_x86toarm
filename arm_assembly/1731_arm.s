	nop
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	strb	w0, [sp, 8]
	nop
	mov	w0, w1
	add	sp, sp, 16
	ret
_ZSt4__lgl:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	clz	x0, x0
	mov	w1, w0
	mov	w0, 63
	sub	w0, w0, w1
	sxtw	x0, w0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L9
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w19, 0
	add	x0, sp, 32
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x1, sp, 48
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L18
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZSt4__lgl
	lsl	x0, x0, 1
	mov	w3, w20
	mov	x2, x0
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x1, sp, 48
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	mov	w0, 0
	b	.L28
	ldr	x0, [sp, 56]
	str	x0, [sp, 88]
	add	x0, sp, 88
	add	x1, sp, 48
	add	x0, sp, 88
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	mov	w0, 0
	b	.L28
	ldr	x0, [sp, 48]
	str	x0, [sp, 88]
	add	x0, sp, 88
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	add	x0, sp, 88
	add	x0, sp, 40
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	nop
	add	x0, sp, 72
	mov	x1, x0
	add	x0, sp, 40
	ldr	x2, [x1]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 88]
	add	x0, sp, 56
	mov	w2, w20
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 80]
	mov	w0, 1
	b	.L28
	add	x1, sp, 56
	add	x0, sp, 88
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L27
	add	x0, sp, 56
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	sub	x0, x19, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	b	.L34
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L35
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	b	.L33
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w2, w20
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	str	x0, [sp, 88]
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 64]
	add	x1, sp, 72
	add	x0, sp, 64
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L37
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 72
	add	x0, sp, 64
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w21
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w20
	ldr	x1, [sp, 64]
	b	.L41
	mov	w2, w19
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
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
	cset	w0, eq
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
	sub	x1, x0, #1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 48
	ldrb	w19, [x0]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	bne	.L58
	add	x0, sp, 32
	b	.L56
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	add	x0, sp, 32
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L57
	b	.L53
	nop
	ldp	x29, x30, [sp], 48
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
	strb	w3, [sp, 16]
	mov	w3, w4
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 72
	add	x0, sp, 64
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 72
	str	x0, [sp, 88]
	add	x0, sp, 72
	mov	x1, 1
	mov	x19, x0
	add	x0, sp, 64
	mov	x1, 1
	mov	w4, w21
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	mov	x1, 1
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 64
	add	x0, sp, 72
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L73
	add	x0, sp, 72
	mov	x1, 1
	str	x0, [sp, 88]
	b	.L69
	add	x0, sp, 56
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L70
	add	x0, sp, 88
	ldrb	w0, [x0]
	strb	w0, [sp, 87]
	add	x0, sp, 88
	mov	x1, 1
	mov	x2, x0
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 72]
	add	x0, sp, 87
	ldrb	w19, [x0]
	add	x0, sp, 72
	mov	w1, w19
	strb	w1, [x0]
	b	.L71
	mov	w0, w21
	mov	w1, w20
	ldr	x0, [sp, 88]
	add	x0, sp, 88
	add	x1, sp, 64
	add	x0, sp, 88
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L72
	b	.L66
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L75
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	add	x1, sp, 48
	add	x0, sp, 72
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L76
	nop
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L85
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L86
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	add	x1, sp, 24
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L87
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L89
	add	x0, sp, 32
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L90
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L94
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L95
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L100
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L97
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L100
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L100
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L98
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L100
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L99
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L100
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L102
	add	x0, sp, 40
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L103
	add	x0, sp, 32
	b	.L104
	add	x0, sp, 32
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L105
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L106
	ldr	x0, [sp, 40]
	b	.L109
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	b	.L102
	ldp	x29, x30, [sp], 48
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
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 63]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	add	x0, sp, 48
	b	.L113
	add	x0, sp, 48
	ldrb	w19, [x0]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	add	x0, sp, 48
	add	x1, sp, 63
	add	x0, sp, 32
	ldr	x2, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L114
	add	x0, sp, 63
	ldrb	w19, [x0]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x1, sp, 56
	add	x0, sp, 48
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L120
	add	x1, sp, 56
	add	x0, sp, 48
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
	add	x0, sp, 56
	ldr	x1, [sp, 88]
	str	x0, [sp, 72]
	add	x0, sp, 72
	ldrb	w0, [x0]
	strb	w0, [sp, 71]
	add	x0, sp, 71
	ldrb	w0, [x0]
	mov	w4, w19
	mov	w3, w0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L121
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L119
	nop
	b	.L115
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 79]
	add	x0, sp, 56
	ldrb	w19, [x0]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	add	x1, sp, 56
	add	x0, sp, 48
	mov	x19, x0
	add	x0, sp, 79
	ldrb	w0, [x0]
	mov	w4, w20
	mov	w3, w0
	mov	x2, x19
	mov	x1, 0
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
	ldr	x0, [sp, 40]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldrb	w19, [x0]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 39]
	strb	w4, [sp, 32]
	ldr	x0, [sp, 48]
	str	x0, [sp, 112]
	ldr	x0, [sp, 48]
	str	x0, [sp, 120]
	b	.L130
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	mov	x19, x0
	ldr	x0, [sp, 120]
	sub	x1, x0, #1
	add	x0, sp, 56
	mov	x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L131
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	str	x0, [sp, 80]
	add	x0, sp, 80
	ldrb	w19, [x0]
	add	x0, sp, 56
	ldr	x1, [sp, 48]
	str	x0, [sp, 88]
	add	x0, sp, 88
	mov	w1, w19
	strb	w1, [x0]
	ldr	x0, [sp, 120]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 120]
	cmp	x0, x1
	blt	.L132
	ldr	x0, [sp, 40]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L133
	ldr	x0, [sp, 40]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 120]
	cmp	x0, x1
	bne	.L133
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	sub	x1, x0, #1
	add	x0, sp, 56
	str	x0, [sp, 96]
	add	x0, sp, 96
	ldrb	w19, [x0]
	add	x0, sp, 56
	ldr	x1, [sp, 48]
	str	x0, [sp, 104]
	add	x0, sp, 104
	mov	w1, w19
	strb	w1, [x0]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	add	x0, sp, 32
	add	x0, sp, 72
	mov	w1, w20
	add	x0, sp, 39
	ldrb	w1, [x0]
	add	x0, sp, 72
	mov	x4, x0
	mov	w3, w1
	ldr	x2, [sp, 112]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	ldr	x0, [x0]
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
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x1, x0, x1
	add	x0, sp, 24
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 55]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	b	.L143
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	str	x0, [sp, 80]
	add	x0, sp, 80
	ldrb	w19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 88]
	add	x0, sp, 88
	mov	w1, w19
	strb	w1, [x0]
	ldr	x0, [sp, 104]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L144
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	mov	x1, x0
	add	x0, sp, 55
	mov	x2, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L144
	mov	w0, 1
	b	.L145
	mov	w0, 0
	cmp	w0, 0
	bne	.L146
	add	x0, sp, 55
	ldrb	w19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 96]
	add	x0, sp, 96
	mov	w1, w19
	strb	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	add	x0, sp, 32
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
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
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L152
	ldr	x0, [sp, 56]
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	mov	x2, x1
	ldr	x1, [sp, 40]
	bl	memmove
	ldr	x0, [sp, 56]
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
	bne	.L156
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L156
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