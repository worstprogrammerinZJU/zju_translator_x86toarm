main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	add	x0, sp, 120
	add	x0, sp, 152
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 120
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 16
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 172]
	b	.L2
	ldrsw	x1, [sp, 172]
	add	x0, sp, 120
	ldrb	w0, [x0]
	sub	w3, w0, #97
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 152]
	ldr	w1, [sp, 172]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 168]
	str	wzr, [sp, 164]
	b	.L4
	ldrsw	x0, [sp, 164]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 168]
	add	w0, w0, 1
	str	w0, [sp, 168]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
	ldr	w0, [sp, 164]
	cmp	w0, 25
	ble	.L6
	mov	w1, 26
	ldr	w0, [sp, 168]
	sub	w0, w1, w0
	str	w0, [sp, 160]
	ldr	w1, [sp, 152]
	ldr	w0, [sp, 168]
	sub	w0, w1, w0
	str	w0, [sp, 156]
	ldr	w1, [sp, 160]
	ldr	w0, [sp, 156]
	cmp	w1, w0
	bge	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L8
	ldr	w1, [sp, 156]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 120
	mov	w0, 0
	ldp	x29, x30, [sp], 176
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