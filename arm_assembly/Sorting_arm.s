	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	b	.L2
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L3
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 16]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 16]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	nop
	nop
	add	sp, sp, 32
	ret
main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4036
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 4044]
	b	.L8
	add	x1, sp, 16
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L9
	ldr	w1, [sp, 4036]
	add	x0, sp, 16
	bl	_Z13selectionSortPii
	str	wzr, [sp, 4040]
	b	.L10
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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