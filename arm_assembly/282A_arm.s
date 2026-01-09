main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x2, sp, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	add	x2, sp, 32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	b	.L5
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L7
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 76]
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
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