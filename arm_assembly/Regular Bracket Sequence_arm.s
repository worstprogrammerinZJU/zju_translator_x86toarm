main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	b	.L2
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 40
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	b	.L4
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L5
	ldr	w0, [sp, 72]
	cmp	w0, 0
	ble	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
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
	bne	.L7
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w19, 0
	add	x0, sp, 32
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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