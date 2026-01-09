main:
	sub	sp, sp, #4064
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4036
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 4060]
	b	.L2
	add	x1, sp, 16
	ldrsw	x0, [sp, 4060]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 4056]
	str	wzr, [sp, 4052]
	mov	w0, 1
	str	w0, [sp, 4048]
	b	.L4
	ldrsw	x0, [sp, 4048]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 16
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 4048]
	str	w0, [sp, 4056]
	ldrsw	x0, [sp, 4048]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x2, sp, 16
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 4048]
	str	w0, [sp, 4052]
	ldr	w0, [sp, 4048]
	add	w0, w0, 1
	str	w0, [sp, 4048]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4048]
	cmp	w1, w0
	blt	.L7
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	str	w0, [sp, 4040]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [sp, 4040]
	str	w2, [x1, x0]
	str	wzr, [sp, 4044]
	b	.L8
	ldrsw	x0, [sp, 4044]
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
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4064
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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