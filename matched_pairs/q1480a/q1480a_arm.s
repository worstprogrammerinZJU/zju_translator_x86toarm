main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	str	w0, [sp, 72]
	str	wzr, [sp, 68]
	b	.L3
	ldr	w0, [sp, 72]
	cmp	w0, 1
	bne	.L4
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	mov	x1, x0
	mov	w0, 98
	strb	w0, [x1]
	b	.L6
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	ldr	w0, [sp, 72]
	neg	w0, w0
	str	w0, [sp, 72]
	b	.L7
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 122
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	mov	x1, x0
	mov	w0, 121
	strb	w0, [x1]
	b	.L9
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	mov	x1, x0
	mov	w0, 122
	strb	w0, [x1]
	ldr	w0, [sp, 72]
	neg	w0, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldrsw	x19, [sp, 68]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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