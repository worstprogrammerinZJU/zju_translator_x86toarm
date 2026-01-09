main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	strb	w0, [sp, 79]
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L2
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	islower
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	strb	wzr, [sp, 79]
	b	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldrsw	x19, [sp, 72]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L6
	str	wzr, [sp, 68]
	b	.L7
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	islower
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	toupper
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L9
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	tolower
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
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
	b	.L11
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
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