main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 16
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 16
	str	w0, [sp, 52]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	b	.L2
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L3
	ldr	w1, [sp, 60]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L7
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L7
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