main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	b	.L2
	add	x0, sp, 31
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldrb	w0, [sp, 31]
	cmp	w0, 43
	bne	.L3
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 56]
	b	.L4
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L5
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	b	.L4
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldrsw	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	blt	.L6
	ldr	x1, [sp, 56]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 52]
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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