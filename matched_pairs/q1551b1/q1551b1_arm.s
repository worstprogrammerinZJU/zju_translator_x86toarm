main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 80]
	add	x0, sp, 32
	lsr	x0, x0, 1
	str	w0, [sp, 76]
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
	str	wzr, [sp, 96]
	mov	w0, 97
	strb	w0, [sp, 95]
	b	.L3
	str	wzr, [sp, 88]
	str	wzr, [sp, 84]
	b	.L4
	ldrsw	x1, [sp, 84]
	add	x0, sp, 32
	ldrb	w0, [x0]
	ldrb	w1, [sp, 95]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldrsw	x19, [sp, 84]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 88]
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	b	.L8
	ldr	w0, [sp, 88]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 88]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	b	.L8
	ldr	w0, [sp, 88]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L8
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldrb	w0, [sp, 95]
	add	w0, w0, 1
	strb	w0, [sp, 95]
	ldrb	w0, [sp, 95]
	cmp	w0, 122
	bls	.L10
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 104]
	add	w1, w1, w0
	ldr	w0, [sp, 96]
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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