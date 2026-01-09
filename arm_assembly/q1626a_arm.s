main:
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 180
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 204]
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 200]
	b	.L3
	ldrsw	x0, [sp, 200]
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	wzr, [x1, x0]
	ldr	w0, [sp, 200]
	add	w0, w0, 1
	str	w0, [sp, 200]
	ldr	w0, [sp, 200]
	cmp	w0, 25
	ble	.L4
	str	wzr, [sp, 196]
	b	.L5
	ldrsw	x1, [sp, 196]
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 185]
	ldrb	w0, [sp, 185]
	sub	w0, w0, #97
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w0, [x1, x0]
	ldrb	w1, [sp, 185]
	sub	w1, w1, #97
	add	w2, w0, 1
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 72
	str	w2, [x1, x0]
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	ldrsw	x19, [sp, 196]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 192]
	b	.L7
	ldrsw	x0, [sp, 192]
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w0, [x1, x0]
	cmp	w0, 2
	bne	.L8
	ldr	w0, [sp, 192]
	and	w0, w0, 255
	add	w0, w0, 97
	strb	w0, [sp, 186]
	ldrb	w1, [sp, 186]
	adrp	x0, :got:_ZSt4cout
	ldrb	w1, [sp, 186]
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	ldr	w0, [sp, 192]
	cmp	w0, 25
	ble	.L9
	str	wzr, [sp, 188]
	b	.L10
	ldrsw	x0, [sp, 188]
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bne	.L11
	ldr	w0, [sp, 188]
	and	w0, w0, 255
	add	w0, w0, 97
	strb	w0, [sp, 187]
	ldrb	w1, [sp, 187]
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	ldr	w0, [sp, 188]
	cmp	w0, 25
	ble	.L12
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	str	w0, [sp, 204]
	ldr	w0, [sp, 180]
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