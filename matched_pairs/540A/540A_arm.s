_ZL3INF:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	x0, [sp]
	b	.L6
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 124]
	str	wzr, [sp, 120]
	b	.L8
	ldrsw	x1, [sp, 120]
	add	x0, sp, 64
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 28]
	ldrsw	x1, [sp, 120]
	add	x0, sp, 32
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 24]
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 116]
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 112]
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 116]
	sub	w0, w1, w0
	str	w0, [sp, 100]
	ldr	w0, [sp, 116]
	add	w1, w0, 10
	ldr	w0, [sp, 112]
	sub	w0, w1, w0
	str	w0, [sp, 104]
	add	x1, sp, 104
	add	x0, sp, 100
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 108]
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 108]
	add	w0, w1, w0
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L9
	ldr	w1, [sp, 124]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	add	x0, sp, 32
	add	x0, sp, 64
	mov	w0, 0
	ldp	x29, x30, [sp], 128
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