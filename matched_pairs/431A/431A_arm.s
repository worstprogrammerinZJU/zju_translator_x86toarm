main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 84
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 80
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 76
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L2
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 92]
	b	.L4
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 50
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 92]
	b	.L4
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 51
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 92]
	b	.L4
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 52
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 92]
	nop
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldrsw	x19, [sp, 88]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 92]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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