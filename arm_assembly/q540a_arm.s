main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 124]
	add	x0, sp, 72
	add	x0, sp, 40
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 120]
	b	.L2
	ldrsw	x1, [sp, 120]
	add	x0, sp, 72
	ldrb	w0, [x0]
	mov	w19, w0
	ldrsw	x1, [sp, 120]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w19, w0
	bl	abs
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	mov	w1, 10
	sub	w0, w1, w0
	str	w0, [sp, 112]
	add	x1, sp, 112
	add	x0, sp, 36
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 116]
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 116]
	add	w0, w1, w0
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldrsw	x19, [sp, 120]
	add	x0, sp, 72
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	ldr	w1, [sp, 124]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	add	x0, sp, 72
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	x0, [sp]
	b	.L7
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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