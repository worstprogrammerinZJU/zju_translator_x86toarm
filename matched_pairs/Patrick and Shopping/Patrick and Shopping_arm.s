	nop
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	str	wzr, [sp, 76]
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 44
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	ldr	w0, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	add	w1, w1, w0
	ldr	w0, [sp, 48]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 64]
	ldr	w0, [sp, 52]
	lsl	w1, w0, 1
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 68]
	add	x0, sp, 56
	mov	x20, x0
	mov	x21, 4
	mov	x0, x20
	mov	x1, x21
	mov	w1, w0
	ldr	w0, [sp, 76]
	add	w0, w0, w1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	ldr	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	lsl	x0, x0, 2
	add	x0, x19, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L18
	ldr	x0, [sp, 40]
	b	.L19
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L20
	add	x0, sp, 24
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L24
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L24
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