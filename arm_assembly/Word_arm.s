main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	str	wzr, [sp, 84]
	b	.L2
	ldrsw	x1, [sp, 84]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 64
	bls	.L3
	ldrsw	x1, [sp, 84]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 90
	bhi	.L3
	mov	w0, 1
	b	.L4
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	b	.L6
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldrsw	x19, [sp, 84]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	ble	.L8
	str	wzr, [sp, 80]
	b	.L9
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 96
	bls	.L10
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 122
	bhi	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w0, #32
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L13
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldrsw	x19, [sp, 80]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	b	.L15
	str	wzr, [sp, 76]
	b	.L16
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 64
	bls	.L17
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 90
	bhi	.L17
	mov	w0, 1
	b	.L18
	mov	w0, 0
	cmp	w0, 0
	beq	.L19
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	add	w0, w0, 32
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L20
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
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
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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