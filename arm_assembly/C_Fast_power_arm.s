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
_Z6modMulxxx:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [sp, 16]
	ldr	x2, [sp, 8]
	sdiv	x3, x0, x2
	ldr	x2, [sp, 8]
	mul	x2, x3, x2
	sub	x0, x0, x2
	mul	x0, x1, x0
	ldr	x1, [sp, 8]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 32
	ret
_Z12fastPowerModxxx:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L5
	mov	x0, 1
	b	.L6
	ldr	x0, [sp, 32]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_Z12fastPowerModxxx
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L7
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 56]
	bl	_Z6modMulxxx
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	b	.L6
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 56]
	bl	_Z6modMulxxx
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_Z6modMulxxx
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	mov	x2, 51719
	movk	x2, 0x3b9a, lsl 16
	bl	_Z12fastPowerModxxx
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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