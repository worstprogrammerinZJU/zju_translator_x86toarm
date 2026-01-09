main:
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	add	x0, sp, 136
	add	x0, sp, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	add	x0, sp, 136
	str	x0, [sp, 176]
	ldr	x0, [sp, 176]
	str	x0, [sp, 24]
	ldr	x0, [sp, 176]
	str	x0, [sp, 16]
	b	.L2
	add	x0, sp, 24
	ldrb	w0, [x0]
	strb	w0, [sp, 171]
	ldrb	w0, [sp, 171]
	sub	w3, w0, #97
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 24
	add	x1, sp, 16
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	mov	w0, 97
	strb	w0, [sp, 191]
	b	.L4
	ldrb	w0, [sp, 191]
	sub	w0, w0, #97
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 172]
	ldr	w0, [sp, 172]
	cmp	w0, 0
	ble	.L5
	ldrb	w1, [sp, 191]
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 172]
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldrb	w0, [sp, 191]
	add	w0, w0, 1
	strb	w0, [sp, 191]
	ldrb	w0, [sp, 191]
	cmp	w0, 122
	bls	.L6
	add	x0, sp, 136
	mov	w0, 0
	ldp	x29, x30, [sp], 192
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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