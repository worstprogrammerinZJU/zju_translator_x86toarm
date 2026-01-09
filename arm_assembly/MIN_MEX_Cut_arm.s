main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 76
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 40
	str	wzr, [sp, 88]
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 52
	strb	w0, [sp, 95]
	str	wzr, [sp, 84]
	str	wzr, [sp, 80]
	b	.L3
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	ldrb	w1, [sp, 95]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 95]
	ldrb	w0, [sp, 95]
	cmp	w0, 48
	bne	.L4
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 2
	beq	.L10
	nop
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldrsw	x19, [sp, 80]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	b	.L6
	nop
	ldr	w1, [sp, 84]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L8
	add	x0, sp, 40
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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