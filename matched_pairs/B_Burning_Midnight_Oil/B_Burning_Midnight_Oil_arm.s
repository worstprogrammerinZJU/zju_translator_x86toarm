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
_Z3canxxx:
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L3
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sdiv	x0, x1, x0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	sdiv	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bgt	.L4
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	cset	w0, ge
	and	w0, w0, 255
	add	sp, sp, 48
	ret
main:
	stp	x29, x30, [sp, -64]!
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
	str	xzr, [sp, 56]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L7
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 24]
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_Z3canxxx
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	b	.L7
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	ble	.L9
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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