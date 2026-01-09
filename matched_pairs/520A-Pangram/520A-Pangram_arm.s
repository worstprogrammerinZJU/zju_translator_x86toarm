main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 72
	add	x0, x0, 123
	strb	wzr, [sp, 215]
	add	x1, sp, 215
	add	x3, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt4fillIPbbEvT_S1_RKT0_
	add	x0, sp, 40
	add	x0, sp, 200
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 220]
	b	.L2
	ldrsw	x1, [sp, 220]
	add	x0, sp, 40
	ldrb	w0, [x0]
	bl	tolower
	and	w19, w0, 255
	ldrsw	x1, [sp, 220]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	ldrsw	x1, [sp, 220]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sxtw	x0, w0
	add	x1, sp, 72
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldrsw	x19, [sp, 220]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	mov	w0, 97
	str	w0, [sp, 216]
	b	.L4
	ldrsw	x0, [sp, 216]
	add	x1, sp, 72
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w20, 0
	mov	w19, 0
	b	.L6
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	w0, [sp, 216]
	cmp	w0, 122
	ble	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w19, 1
	add	x0, sp, 40
	cmp	w19, 1
	bne	.L9
	mov	w20, 0
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	b	.L13
	ldr	x0, [sp, 24]
	ldrb	w1, [sp, 47]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L14
	nop
	nop
	add	sp, sp, 48
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