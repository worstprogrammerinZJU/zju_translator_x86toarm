main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w0, 57
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	add	x0, sp, 40
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	add	x0, sp, 40
	mov	x1, 0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 76]
	add	x0, sp, 40
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	mov	w0, 57
	sub	w0, w0, w1
	str	w0, [sp, 80]
	add	x1, sp, 80
	add	x0, sp, 76
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L4
	ldrsw	x1, [sp, 92]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 84]
	ldrsw	x1, [sp, 92]
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w1, w0
	mov	w0, 57
	sub	w0, w0, w1
	str	w0, [sp, 88]
	add	x1, sp, 88
	add	x0, sp, 84
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldrsw	x19, [sp, 92]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	add	x0, sp, 40
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L8
	ldr	x0, [sp]
	b	.L9
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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