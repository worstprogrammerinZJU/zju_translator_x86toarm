	nop
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
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
_Z3askii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 28]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	ldr	w1, [sp, 24]
	bl	_ZNSolsEi
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSo5flushEv
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 28]
	b	.L8
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
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	bl	_Z5setupv
	mov	w1, 2
	mov	w0, 1
	bl	_Z3askii
	str	w0, [sp, 84]
	mov	w1, 3
	mov	w0, 1
	bl	_Z3askii
	str	w0, [sp, 80]
	mov	w1, 4
	mov	w0, 1
	bl	_Z3askii
	str	w0, [sp, 76]
	mov	w1, 5
	mov	w0, 1
	bl	_Z3askii
	str	w0, [sp, 72]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	mul	w0, w1, w0
	ldr	w1, [sp, 84]
	cmp	w1, w0
	bne	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	ldr	w1, [sp, 80]
	cmp	w1, w0
	bne	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	ldr	w1, [sp, 76]
	cmp	w1, w0
	bne	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bne	.L10
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 24
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	str	x0, [sp, 88]
	ldr	x0, [sp, 64]
	add	x0, x0, 24
	str	x0, [sp, 56]
	b	.L11
	ldr	x0, [sp, 88]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 32
	ldr	x0, [sp, 88]
	add	x0, x0, 4
	str	x0, [sp, 88]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bne	.L12
	b	.L13
	add	x0, sp, 24
	add	x0, x0, 24
	add	x2, sp, 24
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 96
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bne	.L19
	mov	w0, 0
	b	.L20
	ldr	x0, [sp, 56]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	add	x0, x0, 4
	str	x0, [sp, 88]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L21
	mov	w0, 0
	b	.L20
	ldr	x0, [sp, 48]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	sub	x0, x0, #4
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldr	x0, [sp, 88]
	sub	x0, x0, #4
	str	x0, [sp, 88]
	add	x0, sp, 40
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	ldr	x0, [sp, 48]
	str	x0, [sp, 80]
	nop
	ldr	x0, [sp, 80]
	sub	x0, x0, #4
	str	x0, [sp, 80]
	add	x0, sp, 40
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	add	x0, sp, 56
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	mov	w0, 1
	b	.L20
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 88]
	cmp	x1, x0
	bne	.L25
	ldr	x19, [sp, 56]
	add	x0, sp, 56
	mov	w2, w20
	ldr	x1, [sp, 48]
	mov	x0, x19
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
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
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L36
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	b	.L34
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L35
	b	.L31
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	add	x0, sp, 44
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L42
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L42
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