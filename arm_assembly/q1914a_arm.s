main:
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 172
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 204]
	b	.L2
	add	x0, sp, 168
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 200]
	b	.L3
	ldrsw	x0, [sp, 200]
	lsl	x0, x0, 2
	add	x1, sp, 64
	str	wzr, [x1, x0]
	ldr	w0, [sp, 200]
	add	w0, w0, 1
	str	w0, [sp, 200]
	ldr	w0, [sp, 200]
	cmp	w0, 25
	ble	.L4
	mov	w0, 65
	strb	w0, [sp, 199]
	b	.L5
	str	wzr, [sp, 192]
	b	.L6
	ldrsw	x1, [sp, 192]
	add	x0, sp, 32
	ldrb	w0, [x0]
	ldrb	w1, [sp, 199]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldrb	w0, [sp, 199]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 64
	str	w2, [x1, x0]
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	ldrsw	x19, [sp, 192]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	ldrb	w0, [sp, 199]
	add	w0, w0, 1
	strb	w0, [sp, 199]
	ldrb	w0, [sp, 199]
	cmp	w0, 90
	bls	.L9
	str	xzr, [sp, 184]
	mov	w0, 65
	strb	w0, [sp, 179]
	str	wzr, [sp, 180]
	b	.L10
	ldrsw	x0, [sp, 180]
	lsl	x0, x0, 2
	add	x1, sp, 64
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 180]
	cmp	w1, w0
	bge	.L11
	ldr	x0, [sp, 184]
	add	x0, x0, 1
	str	x0, [sp, 184]
	ldr	w0, [sp, 180]
	add	w0, w0, 1
	str	w0, [sp, 180]
	ldr	w0, [sp, 180]
	cmp	w0, 25
	ble	.L12
	ldr	x1, [sp, 184]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	str	w0, [sp, 204]
	ldr	w0, [sp, 172]
	ldr	w1, [sp, 204]
	cmp	w1, w0
	ble	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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