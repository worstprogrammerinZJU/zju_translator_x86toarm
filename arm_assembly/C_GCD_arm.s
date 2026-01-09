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
_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	b	.L4
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z3lcmii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3gcdii
	mov	w1, w0
	ldr	w0, [sp, 28]
	sdiv	w1, w0, w1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	mov	x19, x0
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	blt	.L10
	ldr	x0, [sp, 8]
	b	.L11
	ldr	x0, [sp, 8]
	neg	x0, x0
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	mov	w0, 64
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L13
	mov	w0, 64
	b	.L14
	mov	w0, 64
	str	w0, [sp, 24]
	mov	w0, 64
	str	w0, [sp, 20]
	mov	w0, 32
	str	w0, [sp, 16]
	ldr	x0, [sp, 8]
	rbit	x0, x0
	clz	x0, x0
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 16]
	b	.L17
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L18
	ldr	x0, [sp, 24]
	b	.L17
	ldr	x0, [sp, 24]
	bl	_ZSt13__countr_zeroIyEiT_
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 24]
	lsr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	bl	_ZSt13__countr_zeroIyEiT_
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	ldr	x1, [sp, 16]
	lsr	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L19
	ldr	w0, [sp, 60]
	b	.L20
	ldr	w0, [sp, 56]
	str	w0, [sp, 52]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bls	.L21
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L22
	ldr	w0, [sp, 52]
	ldr	x1, [sp, 24]
	lsl	x0, x1, x0
	b	.L17
	ldr	x0, [sp, 16]
	bl	_ZSt13__countr_zeroIyEiT_
	mov	w1, w0
	ldr	x0, [sp, 16]
	lsr	x0, x0, x1
	str	x0, [sp, 16]
	b	.L23
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	ldr	x0, [sp, 72]
	str	x0, [sp, 104]
	ldr	x0, [sp, 64]
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	cmp	x0, 0
	beq	.L27
	ldr	x0, [sp, 96]
	cmp	x0, 0
	bne	.L28
	mov	x0, 0
	b	.L32
	ldr	x19, [sp, 104]
	ldr	x0, [sp, 104]
	ldr	x1, [sp, 96]
	udiv	x0, x19, x0
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	mov	x2, 0
	ldr	x0, [sp, 96]
	mul	x3, x1, x0
	smulh	x0, x1, x0
	mov	x20, x3
	mov	x21, x0
	mov	x22, x21
	asr	x23, x21, 63
	mov	x1, x20
	asr	x0, x1, 63
	cmp	x0, x22
	beq	.L30
	mov	x2, 1
	mov	x0, x1
	str	x0, [sp, 80]
	mov	x0, x2
	strb	w0, [sp, 95]
	ldrb	w0, [sp, 95]
	and	w0, w0, 1
	strb	w0, [sp, 95]
	ldr	x0, [sp, 80]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L35
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L35
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