_ZL3INF:
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 76
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	mov	x1, 0
	ldrb	w19, [x0]
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	b	.L4
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w19, [x0]
	add	x0, sp, 40
	mov	x1, 0
	mov	w1, w19
	strb	w1, [x0]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 40
	ldr	w0, [sp, 76]
	sub	w1, w0, #1
	str	w1, [sp, 76]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
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
	bne	.L9
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L9
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