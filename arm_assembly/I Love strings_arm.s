main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 64
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 124]
	b	.L3
	ldrsw	x19, [sp, 124]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldrsw	x1, [sp, 124]
	add	x0, sp, 32
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldrsw	x19, [sp, 124]
	add	x0, sp, 64
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 124]
	add	x0, sp, 64
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x19, [sp, 124]
	add	x0, sp, 32
	str	x0, [sp, 104]
	add	x0, sp, 64
	str	x0, [sp, 112]
	add	x1, sp, 112
	add	x0, sp, 104
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 100]
	sub	w1, w0, #1
	str	w1, [sp, 100]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L10
	ldr	x0, [sp]
	b	.L11
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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