_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	ldr	w1, [sp, 28]
	bl	_Z3gcdii
	b	.L4
	ldr	w0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 44]
	b	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 28]
	bl	_Z3gcdii
	str	w0, [sp, 40]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L6
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	bl	_Z3gcdii
	str	w0, [sp, 40]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L8
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L9
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L10
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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