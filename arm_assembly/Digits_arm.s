	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 16
	str	wzr, [sp, 60]
	b	.L4
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 16
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L5
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L6
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L7
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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