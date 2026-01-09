main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	w0, 1
	strb	w0, [sp, 31]
	b	.L2
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	ldrb	w0, [sp, 31]
	cmp	w0, 0
	beq	.L3
	strb	wzr, [sp, 31]
	b	.L2
	mov	w0, 1
	strb	w0, [sp, 31]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L5
	ldrb	w0, [sp, 31]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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