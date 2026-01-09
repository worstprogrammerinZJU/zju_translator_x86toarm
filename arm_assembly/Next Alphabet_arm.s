main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 31
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldrb	w0, [sp, 31]
	cmp	w0, 122
	beq	.L2
	ldrb	w0, [sp, 31]
	add	w0, w0, 1
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
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
	bne	.L7
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L7
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