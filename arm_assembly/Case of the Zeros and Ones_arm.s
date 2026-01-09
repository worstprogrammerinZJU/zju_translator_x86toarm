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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	str	wzr, [sp, 76]
	b	.L5
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L7
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L8
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w19, [x0]
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 40
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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