main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	wzr, [sp, 148]
	b	.L2
	str	wzr, [sp, 144]
	b	.L3
	add	x2, sp, 40
	ldrsw	x3, [sp, 144]
	ldrsw	x1, [sp, 148]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldrsw	x2, [sp, 144]
	ldrsw	x1, [sp, 148]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 144]
	add	w0, w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 144]
	cmp	w0, 4
	ble	.L5
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 4
	ble	.L6
	mov	w1, 3
	ldr	w0, [sp, 156]
	sub	w0, w1, w0
	bl	abs
	mov	w19, w0
	mov	w1, 3
	ldr	w0, [sp, 152]
	sub	w0, w1, w0
	bl	abs
	add	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
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