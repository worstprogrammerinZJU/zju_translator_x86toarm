_ZL3INF:
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 24
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	str	x0, [sp, 104]
	ldr	x0, [sp, 96]
	add	x0, x0, 56
	str	x0, [sp, 88]
	b	.L2
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	str	w0, [sp, 84]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w0, 0
	b	.L4
	ldr	x0, [sp, 104]
	add	x0, x0, 4
	str	x0, [sp, 104]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 88]
	cmp	x1, x0
	bne	.L5
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L8
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