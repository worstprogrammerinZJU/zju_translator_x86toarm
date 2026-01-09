main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L2
	str	wzr, [sp, 84]
	b	.L3
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 80]
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	b	.L4
	ldrsw	x1, [sp, 68]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 65
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	str	w0, [sp, 80]
	ldrsw	x1, [sp, 68]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	mov	w0, 1
	str	w0, [sp, 76]
	ldrsw	x1, [sp, 68]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 67
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 2
	ble	.L8
	ldr	w0, [sp, 80]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 76]
	cmp	w0, 1
	bne	.L10
	ldr	w0, [sp, 72]
	cmp	w0, 1
	beq	.L11
	mov	w0, 67
	b	.L14
	mov	w0, 80
	b	.L14
	mov	w0, 66
	b	.L14
	mov	w0, 65
	strb	w0, [sp, 67]
	ldrb	w0, [sp, 67]
	cmp	w0, 80
	beq	.L15
	ldrb	w0, [sp, 67]
	strb	w0, [sp, 91]
	add	x0, sp, 24
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 2
	ble	.L16
	ldrb	w1, [sp, 91]
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	ble	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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