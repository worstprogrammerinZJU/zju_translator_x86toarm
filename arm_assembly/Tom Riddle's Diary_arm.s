_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L6
	mov	w0, 0
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	str	xzr, [sp, 56]
	b	.L9
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	mov	w0, -1
	b	.L7
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	mov	w0, 1
	b	.L7
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L12
	mov	w0, 0
	b	.L7
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcmp
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt11_Hash_bytesPKvmm
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x2, 26887
	movk	x2, 0xc70f, lsl 16
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 88
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32
	b	.L32
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x1, sp, 88
	add	x0, sp, 32
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	add	x1, sp, 88
	add	x0, sp, 32
	ldr	w0, [x0]
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L33
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	b	.L32
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 124]
	sub	w1, w0, #1
	str	w1, [sp, 124]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L34
	mov	w19, 0
	add	x0, sp, 32
	add	x0, sp, 88
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 120]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 120]
	str	x0, [sp, 112]
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 120]
	str	x0, [sp, 104]
	ldr	x3, [sp, 112]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 120]
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	cmp	x0, 0
	beq	.L48
	ldr	x0, [sp, 96]
	add	x0, x0, 8
	add	x19, x0, 32
	b	.L50
	ldr	x19, [sp, 120]
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	add	x1, sp, 88
	add	x0, sp, 80
	add	x5, sp, 64
	mov	x4, x1
	mov	x3, x0
	mov	x1, x19
	mov	x0, x5
	ldr	x0, [sp, 72]
	mov	x4, 1
	mov	x3, x0
	ldr	x2, [sp, 112]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 120]
	str	x0, [sp, 56]
	str	xzr, [sp, 72]
	add	x0, sp, 56
	add	x19, x0, 32
	add	x0, sp, 64
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	b	.L55
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 16]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L56
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
	bne	.L60
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	b	.L57
	nop
	ldp	x29, x30, [sp], 48
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
	beq	.L66
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	b	.L67
	mov	x0, 0
	ldp	x29, x30, [sp], 64
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
	ldr	x1, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 88]
	str	x1, [sp, 80]
	str	x2, [sp, 72]
	str	x3, [sp, 64]
	str	x4, [sp, 56]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 80]
	str	x1, [x0]
	ldr	x19, [sp, 80]
	ldr	x0, [sp, 72]
	mov	x20, x0
	ldr	x0, [sp, 64]
	mov	x21, x0
	ldr	x0, [sp, 56]
	mov	x3, x0
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 88]
	str	x1, [x0, 8]
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L74
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
	beq	.L76
	ldr	x0, [sp, 80]
	ldr	x2, [sp, 104]
	mov	x1, x0
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 32]
	add	x0, x0, 48
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x0, x0, 8
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
	bne	.L91
	mov	x0, 0
	b	.L92
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
	beq	.L93
	ldr	x0, [sp, 56]
	b	.L92
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L94
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	beq	.L95
	mov	w0, 1
	b	.L96
	mov	w0, 0
	cmp	w0, 0
	bne	.L101
	ldr	x0, [sp, 48]
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	str	x0, [sp, 48]
	b	.L99
	nop
	mov	x0, 0
	ldp	x29, x30, [sp], 64
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
	ldr	x1, [sp, 16]
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	ldr	x0, [sp, 72]
	mov	x1, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	mov	x1, x0
	mov	x0, 56
	bl	_ZnwmPv
	ldr	x0, [sp, 72]
	mov	x19, x0
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	mov	x20, x0
	ldr	x0, [sp, 64]
	mov	x21, x0
	ldr	x0, [sp, 56]
	mov	x22, x0
	ldr	x0, [sp, 48]
	mov	x4, x0
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 80]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 96
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
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 8]
	str	x1, [x0]
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
	beq	.L117
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
	b	.L120
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
	beq	.L119
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	nop
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
	ldr	x0, [sp, 32]
	add	x0, x0, 40
	mov	x1, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L134
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x1, x0
	add	x0, sp, 72
	mov	x2, x0
	ldr	x1, [sp, 48]
	mov	x0, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L134
	mov	w0, 1
	b	.L135
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
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x4, x0
	mov	x3, x20
	mov	x2, x19
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	b	.L149
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
	bne	.L150
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
	beq	.L151
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	str	x0, [sp, 80]
	b	.L152
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
	bne	.L153
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	nop
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
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0, 40]
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 37449
	movk	x0, 0x4924, lsl 16
	movk	x0, 0x2492, lsl 32
	movk	x0, 0x249, lsl 48
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
	beq	.L184
	ldr	x1, [sp, 32]
	mov	x0, 9362
	movk	x0, 0x9249, lsl 16
	movk	x0, 0x4924, lsl 32
	movk	x0, 0x492, lsl 48
	cmp	x1, x0
	bls	.L185
	bl	_ZSt17__throw_bad_allocv
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x1, x0
	add	x0, sp, 96
	add	x19, sp, 96
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 64]
	mov	x1, x0
	mov	x0, 40
	bl	_ZnwmPv
	ldrb	w3, [sp, 104]
	mov	x2, x19
	ldrb	w1, [sp, 88]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
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
	beq	.L192
	ldr	x0, [sp, 24]
	str	xzr, [x0, 48]
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	b	.L193
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
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	cmp	x19, x0
	bne	.L207
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	cmp	w0, 0
	bne	.L207
	mov	w0, 1
	b	.L208
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	ldr	x1, [x1]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 16
	mov	w3, w5
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
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
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 72]
	str	wzr, [x0, 32]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	beq	.L234
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L235
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L245
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L245
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