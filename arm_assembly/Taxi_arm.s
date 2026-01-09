main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	wzr, [sp, 36]
	str	wzr, [sp, 60]
	str	wzr, [sp, 32]
	str	wzr, [sp, 56]
	str	wzr, [sp, 48]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 52]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L5
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L6
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bne	.L4
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 48]
	add	w0, w0, w1
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L8
	mov	w0, 2
	str	w0, [sp, 44]
	add	x1, sp, 36
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 3
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w1, w0
	ldr	w0, [sp, 48]
	add	w0, w0, w1
	str	w0, [sp, 48]
	ldr	w1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L11
	ldr	x0, [sp]
	b	.L12
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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