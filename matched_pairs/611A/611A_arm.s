_ZL3INF:
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 56
	add	x0, sp, 24
	str	wzr, [sp, 92]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 24
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w0, 109
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 20]
	cmp	w0, 31
	bne	.L3
	mov	w1, 7
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 30
	bne	.L5
	mov	w1, 11
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L4
	mov	w1, 12
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L4
	add	x0, sp, 24
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w0, 119
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 6
	beq	.L6
	ldr	w0, [sp, 20]
	cmp	w0, 5
	bne	.L7
	mov	w1, 53
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L4
	mov	w1, 52
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	add	x0, sp, 24
	add	x0, sp, 56
	mov	w0, 0
	ldp	x29, x30, [sp], 96
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