main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	add	x0, sp, 24
	str	w0, [sp, 60]
	str	wzr, [sp, 72]
	b	.L2
	ldrsw	x1, [sp, 72]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 81
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 68]
	b	.L5
	ldrsw	x1, [sp, 68]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 65
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	.L8
	ldrsw	x1, [sp, 64]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 81
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L10
	nop
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L11
	b	.L7
	nop
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L12
	b	.L4
	nop
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 60]
	sub	w0, w0, #2
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L13
	ldr	w1, [sp, 76]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 24
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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