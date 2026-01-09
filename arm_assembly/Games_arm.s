main:
	stp	x29, x30, [sp, -336]!
	mov	x29, sp
	str	wzr, [sp, 332]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 328]
	b	.L2
	add	x1, sp, 176
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x1, sp, 32
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 328]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 324]
	b	.L4
	str	wzr, [sp, 320]
	b	.L5
	ldr	w1, [sp, 324]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	beq	.L6
	ldrsw	x0, [sp, 324]
	lsl	x0, x0, 2
	add	x1, sp, 176
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 320]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
	ldr	w0, [sp, 320]
	add	w0, w0, 1
	str	w0, [sp, 320]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 320]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 324]
	add	w0, w0, 1
	str	w0, [sp, 324]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 324]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 332]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 336
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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