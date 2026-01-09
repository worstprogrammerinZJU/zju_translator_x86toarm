main:
	stp	x29, x30, [sp, -464]!
	mov	x29, sp
	add	x0, sp, 448
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 444
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 460]
	b	.L3
	add	x1, sp, 16
	ldrsw	x0, [sp, 460]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 460]
	add	w0, w0, 1
	str	w0, [sp, 460]
	ldr	w0, [sp, 444]
	ldr	w1, [sp, 460]
	cmp	w1, w0
	blt	.L4
	mov	w0, 2147483647
	str	w0, [sp, 440]
	str	wzr, [sp, 456]
	b	.L5
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 452]
	b	.L6
	ldrsw	x0, [sp, 456]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 452]
	lsl	x0, x0, 2
	add	x2, sp, 16
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 452]
	add	w1, w1, w0
	ldr	w0, [sp, 456]
	sub	w0, w1, w0
	str	w0, [sp, 436]
	add	x1, sp, 436
	add	x0, sp, 440
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 440]
	ldr	w0, [sp, 452]
	add	w0, w0, 1
	str	w0, [sp, 452]
	ldr	w0, [sp, 444]
	ldr	w1, [sp, 452]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 444]
	ldr	w1, [sp, 456]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 440]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 448]
	sub	w1, w0, #1
	str	w1, [sp, 448]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 464
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L12
	ldr	x0, [sp]
	b	.L13
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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