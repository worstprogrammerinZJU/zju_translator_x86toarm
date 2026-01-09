main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	add	x1, x0, 3
	cmp	x0, 0
	csel	x0, x1, x0, lt
	asr	x0, x0, 2
	str	x0, [sp, 32]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	and	x0, x0, 1
	csneg	x0, x0, x0, ge
	cmp	x0, 1
	bne	.L2
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L3
	ldr	x0, [sp, 16]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L4
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L5
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L5
	ldr	x0, [sp, 24]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L6
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L5
	str	wzr, [sp, 44]
	b	.L5
	ldr	x0, [sp, 16]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 16]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L8
	str	wzr, [sp, 44]
	b	.L5
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L5
	ldr	x0, [sp, 24]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L9
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L5
	mov	w0, 3
	str	w0, [sp, 44]
	ldr	x1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 44]
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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