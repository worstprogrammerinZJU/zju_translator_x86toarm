_ZL3INF:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L6
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w0, 2
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L6
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w0, 3
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L6
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w0, 4
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L6
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w0, 5
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L6
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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