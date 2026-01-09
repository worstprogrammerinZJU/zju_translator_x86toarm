main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	strb	wzr, [sp, 71]
	str	wzr, [sp, 64]
	b	.L3
	ldrsw	x1, [sp, 64]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 82
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L5
	ldrsw	x1, [sp, 64]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 85
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	b	.L5
	ldrsw	x1, [sp, 64]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 76
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	b	.L5
	ldrsw	x1, [sp, 64]
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 68
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	str	w0, [sp, 72]
	ldr	w0, [sp, 76]
	cmp	w0, 1
	bne	.L8
	ldr	w0, [sp, 72]
	cmp	w0, 1
	bne	.L8
	mov	w0, 1
	strb	w0, [sp, 71]
	b	.L9
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 64]
	cmp	w1, w0
	blt	.L10
	ldrb	w0, [sp, 71]
	cmp	w0, 0
	beq	.L11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 24
	ldr	w0, [sp, 60]
	sub	w1, w0, #1
	str	w1, [sp, 60]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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