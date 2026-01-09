main:
	sub	sp, sp, #4064
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4048
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 4044
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 4060]
	b	.L2
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [sp, 20]
	ldrsw	x0, [sp, 4060]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
	ldr	w0, [sp, 4048]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 4056]
	str	wzr, [sp, 4052]
	b	.L4
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4044]
	cmp	w1, w0
	bgt	.L5
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
	b	.L6
	ldr	w0, [sp, 4056]
	add	w0, w0, 2
	str	w0, [sp, 4056]
	ldr	w0, [sp, 4052]
	add	w0, w0, 1
	str	w0, [sp, 4052]
	ldr	w0, [sp, 4048]
	ldr	w1, [sp, 4052]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 4056]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4064
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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