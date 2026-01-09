main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	str	w0, [sp, 76]
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L2
	str	wzr, [sp, 84]
	str	wzr, [sp, 80]
	b	.L3
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 84]
	b	.L5
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 92]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L9
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L10
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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