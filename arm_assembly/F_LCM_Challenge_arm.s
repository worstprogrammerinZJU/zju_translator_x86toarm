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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	blt	.L3
	ldr	x0, [sp, 8]
	b	.L4
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
	bne	.L6
	mov	w0, 64
	b	.L7
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
	bne	.L9
	ldr	x0, [sp, 16]
	b	.L10
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L11
	ldr	x0, [sp, 24]
	b	.L10
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
	bge	.L12
	ldr	w0, [sp, 60]
	b	.L13
	ldr	w0, [sp, 56]
	str	w0, [sp, 52]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bls	.L14
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
	bne	.L15
	ldr	w0, [sp, 52]
	ldr	x1, [sp, 24]
	lsl	x0, x1, x0
	b	.L10
	ldr	x0, [sp, 16]
	bl	_ZSt13__countr_zeroIyEiT_
	mov	w1, w0
	ldr	x0, [sp, 16]
	lsr	x0, x0, x1
	str	x0, [sp, 16]
	b	.L16
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
_Z3lcmxx:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 24]
	sdiv	x1, x0, x1
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	ldp	x29, x30, [sp], 32
	ret
_Z3gcdxx:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L22
	ldr	x0, [sp, 24]
	b	.L23
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	_Z3gcdxx
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	bl	_Z5setupv
	str	xzr, [sp, 56]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	b	.L25
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	b	.L26
	ldr	x0, [sp, 40]
	str	x0, [sp, 32]
	b	.L27
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
	bl	_Z3gcdxx
	cmp	x0, 1
	bne	.L28
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_Z3gcdxx
	cmp	x0, 1
	bne	.L28
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 48]
	bl	_Z3gcdxx
	cmp	x0, 1
	bne	.L28
	mov	w0, 1
	b	.L29
	mov	w0, 0
	cmp	w0, 0
	beq	.L30
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	mul	x0, x1, x0
	ldr	x1, [sp, 32]
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	mul	x1, x1, x0
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L31
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mul	x1, x0, x0
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L32
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	mul	x1, x0, x0
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L33
	ldr	x1, [sp, 56]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L37
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L37
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