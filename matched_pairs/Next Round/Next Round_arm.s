main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	strh	wzr, [sp, 142]
	add	x0, sp, 130
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERs
	mov	x2, x0
	add	x0, sp, 128
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERs
	str	wzr, [sp, 136]
	b	.L2
	add	x1, sp, 24
	ldrsw	x0, [sp, 136]
	lsl	x0, x0, 1
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERs
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldrsh	w0, [sp, 130]
	mov	w1, w0
	ldr	w0, [sp, 136]
	cmp	w0, w1
	blt	.L3
	str	wzr, [sp, 132]
	b	.L4
	ldrsw	x0, [sp, 132]
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrsh	w1, [x1, x0]
	ldrsh	w0, [sp, 128]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x2, sp, 24
	ldrsh	w0, [x2, x0]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 132]
	lsl	x0, x0, 1
	add	x1, sp, 24
	ldrsh	w0, [x1, x0]
	cmp	w0, 0
	ble	.L5
	ldrsh	w0, [sp, 142]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [sp, 142]
	ldr	w0, [sp, 132]
	add	w0, w0, 1
	str	w0, [sp, 132]
	ldrsh	w0, [sp, 130]
	mov	w1, w0
	ldr	w0, [sp, 132]
	cmp	w0, w1
	blt	.L6
	ldrh	w1, [sp, 142]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEs
	mov	w0, 0
	ldp	x29, x30, [sp], 144
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