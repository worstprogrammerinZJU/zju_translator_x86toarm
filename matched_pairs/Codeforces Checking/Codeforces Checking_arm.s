main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 27
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldrb	w0, [sp, 27]
	cmp	w0, 99
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 111
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 100
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 101
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 102
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 115
	beq	.L3
	ldrb	w0, [sp, 27]
	cmp	w0, 114
	bne	.L4
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L2
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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