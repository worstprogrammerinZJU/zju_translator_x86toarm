_Z5absoli:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	blt	.L2
	ldr	w0, [sp, 12]
	b	.L3
	ldr	w0, [sp, 12]
	neg	w0, w0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	wzr, [sp, 148]
	b	.L5
	str	wzr, [sp, 144]
	b	.L6
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
	bne	.L7
	ldr	w0, [sp, 148]
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	str	w0, [sp, 152]
	ldr	w0, [sp, 144]
	add	w0, w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 144]
	cmp	w0, 4
	ble	.L8
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldr	w0, [sp, 148]
	cmp	w0, 4
	ble	.L9
	ldr	w0, [sp, 156]
	sub	w0, w0, #2
	bl	_Z5absoli
	mov	w19, w0
	ldr	w0, [sp, 152]
	sub	w0, w0, #2
	bl	_Z5absoli
	add	w0, w19, w0
	str	w0, [sp, 140]
	ldr	w1, [sp, 140]
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