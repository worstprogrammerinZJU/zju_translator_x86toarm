_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
_ZNKSt4hashIcEclEc:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 8]
	udiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	s0, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	s0, [sp, 4]
	str	s0, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	add	sp, sp, 16
	ret
_ZL3INF:
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
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 48
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	mov	x1, 1
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	ldr	x0, [sp, 24]
	str	xzr, [x0, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	fmov	s0, 1.0e+0
	ldr	x0, [sp, 24]
	str	xzr, [x0, 48]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 148
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L20
	add	x0, sp, 144
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	add	x0, sp, 32
	str	x0, [sp, 152]
	ldr	x0, [sp, 152]
	str	x0, [sp, 128]
	ldr	x0, [sp, 152]
	str	x0, [sp, 120]
	b	.L21
	add	x0, sp, 128
	ldrb	w0, [x0]
	strb	w0, [sp, 143]
	add	x1, sp, 143
	add	x0, sp, 64
	add	x0, sp, 128
	add	x1, sp, 120
	add	x0, sp, 128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	ldr	w0, [sp, 144]
	sxtw	x19, w0
	add	x0, sp, 64
	add	x0, x19, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEm
	mov	w1, 10
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 148]
	sub	w1, w0, #1
	str	w1, [sp, 148]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
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
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	lsl	x0, x0, 3
	mov	x3, x1
	mov	x2, x0
	mov	w1, 0
	mov	x0, x3
	bl	memset
	ldr	x0, [sp, 24]
	str	xzr, [x0, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	add	x0, sp, 48
	ldr	x1, [sp, 56]
	add	x0, sp, 48
	mov	w3, w19
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L56
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 16]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L57
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L61
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	b	.L58
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	str	x0, [sp, 184]
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 56]
	str	x0, [sp, 176]
	ldr	x1, [sp, 176]
	ldr	x0, [sp, 56]
	str	x0, [sp, 168]
	ldr	x3, [sp, 176]
	ldr	x2, [sp, 184]
	ldr	x1, [sp, 168]
	ldr	x0, [sp, 56]
	str	x0, [sp, 160]
	ldr	x0, [sp, 160]
	cmp	x0, 0
	beq	.L66
	add	x0, sp, 120
	ldr	x1, [sp, 160]
	strb	wzr, [sp, 135]
	add	x2, sp, 135
	add	x1, sp, 120
	add	x0, sp, 104
	ldp	x20, x21, [sp, 104]
	b	.L68
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 80
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 88]
	mov	x4, 1
	mov	x3, x0
	ldr	x2, [sp, 176]
	ldr	x1, [sp, 168]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	str	xzr, [sp, 88]
	mov	w0, 1
	strb	w0, [sp, 159]
	add	x2, sp, 159
	add	x1, sp, 72
	add	x0, sp, 136
	ldp	x20, x21, [sp, 136]
	add	x0, sp, 80
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 192
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	add	x0, x0, 48
	ldr	x1, [sp]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 48
	add	x0, sp, 48
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 56]
	add	x0, sp, 48
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNKSt4hashIcEclEc
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L82
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	b	.L83
	mov	x0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0, 8]
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
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L93
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x0, 32
	str	x0, [sp, 88]
	add	x0, sp, 88
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	add	x4, x0, 32
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 24]
	ldr	x3, [sp, 24]
	mov	x2, x0
	mov	x0, x4
	stp	x0, x1, [sp, 72]
	ldrb	w0, [sp, 72]
	cmp	w0, 0
	beq	.L95
	ldr	x0, [sp, 80]
	ldr	x2, [sp, 104]
	mov	x1, x0
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 24]
	add	x1, x0, 1
	ldr	x0, [sp, 56]
	str	x1, [x0, 24]
	add	x0, sp, 96
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 96]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
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
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	mov	x2, 1
	ldr	x1, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L114
	mov	x0, 0
	b	.L115
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	mov	x3, x0
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L116
	ldr	x0, [sp, 56]
	b	.L115
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L117
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	beq	.L118
	mov	w0, 1
	b	.L119
	mov	w0, 0
	cmp	w0, 0
	bne	.L124
	ldr	x0, [sp, 48]
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	str	x0, [sp, 48]
	b	.L122
	nop
	mov	x0, 0
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	mov	x20, x0
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 48]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w2, w3
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L134
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	b	.L137
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L136
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x20, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	add	x0, x20, x0
	str	x19, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	add	x1, x1, 16
	str	x1, [x0]
	nop
	ldp	x19, x20, [sp, 16]
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
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L157
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x1, x0
	add	x0, sp, 72
	mov	x2, x0
	ldr	x1, [sp, 48]
	mov	x0, x19
	bl	_ZNKSt8equal_toIcEclERKcS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L157
	mov	w0, 1
	b	.L158
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	str	x0, [sp, 88]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 16]
	str	xzr, [sp, 80]
	b	.L168
	ldr	x0, [sp, 88]
	str	x0, [sp, 64]
	ldr	x0, [sp, 88]
	add	x0, x0, 8
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L169
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 88]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x1, x1, 16
	str	x1, [x0]
	ldr	x0, [sp, 88]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L170
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	str	x0, [sp, 80]
	b	.L171
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 64]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bne	.L172
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 96
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
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 1
	add	sp, sp, 16
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
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x1, x0
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 48
	ldr	x2, [sp, 24]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 576460752303423487
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
	beq	.L194
	ldr	x1, [sp, 32]
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bls	.L195
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 4
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	ldrb	w19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	mov	w1, w19
	strb	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	beq	.L199
	ldr	x0, [sp, 24]
	str	xzr, [x0, 48]
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	b	.L200
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 56
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	mov	x3, x1
	mov	x2, x0
	mov	w1, 0
	mov	x0, x3
	bl	memset
	ldr	x19, [sp, 64]
	add	x0, sp, 56
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
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
	beq	.L220
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L221
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L225
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L225
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