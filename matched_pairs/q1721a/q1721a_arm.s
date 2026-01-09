main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 72
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x1, sp, 72
	add	x0, sp, 40
	add	x2, sp, 104
	mov	x8, x2
	str	wzr, [sp, 152]
	mov	w0, 97
	strb	w0, [sp, 151]
	b	.L3
	str	wzr, [sp, 144]
	str	wzr, [sp, 140]
	b	.L4
	ldrsw	x1, [sp, 140]
	add	x0, sp, 104
	ldrb	w0, [x0]
	ldrb	w1, [sp, 151]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldrsw	x19, [sp, 140]
	add	x0, sp, 104
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 144]
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldrb	w0, [sp, 151]
	add	w0, w0, 1
	strb	w0, [sp, 151]
	ldrb	w0, [sp, 151]
	cmp	w0, 122
	bls	.L8
	ldr	w0, [sp, 152]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 104
	add	x0, sp, 72
	add	x0, sp, 40
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 136]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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