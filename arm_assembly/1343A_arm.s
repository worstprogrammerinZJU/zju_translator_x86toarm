_ZL3INF:
main:
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	str	wzr, [sp, 300]
	b	.L2
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, 2
	fmov	d1, d0
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	fcvtzs	d0, d0
	ldrsw	x0, [sp, 300]
	lsl	x0, x0, 3
	add	x1, sp, 40
	str	d0, [x1, x0]
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	str	w0, [sp, 300]
	ldr	w0, [sp, 300]
	cmp	w0, 31
	ble	.L3
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	b	.L4
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	w0, 1
	str	w0, [sp, 296]
	b	.L5
	ldr	x0, [sp, 24]
	ldrsw	x1, [sp, 296]
	lsl	x1, x1, 3
	add	x2, sp, 40
	ldr	x1, [x2, x1]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L6
	ldr	x1, [sp, 24]
	ldrsw	x0, [sp, 296]
	lsl	x0, x0, 3
	add	x2, sp, 40
	ldr	x0, [x2, x0]
	sdiv	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L4
	ldr	w0, [sp, 296]
	add	w0, w0, 1
	str	w0, [sp, 296]
	ldr	w0, [sp, 296]
	cmp	w0, 31
	ble	.L8
	ldr	x0, [sp, 32]
	sub	x1, x0, #1
	str	x1, [sp, 32]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 304
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	ldr	w0, [sp, 24]
	scvtf	d1, w0
	bl	pow
	ldp	x29, x30, [sp], 32
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