	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	b	.L4
	ldr	x0, [sp, 24]
	bl	strlen
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 204]
	b	.L6
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 96
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 96
	add	x3, sp, 24
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	add	x0, sp, 96
	bl	_ZNSaIcED1Ev
	add	x0, sp, 56
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 56
	sub	w0, w0, #1
	str	w0, [sp, 200]
	b	.L7
	ldrsw	x1, [sp, 200]
	add	x0, sp, 56
	ldrb	w0, [x0]
	strb	w0, [sp, 199]
	ldrb	w0, [sp, 199]
	cmp	w0, 48
	bne	.L8
	ldr	w0, [sp, 200]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 56
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 184]
	ldr	w0, [sp, 200]
	sub	w0, w0, #2
	sxtw	x1, w0
	add	x0, sp, 56
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 180]
	ldr	w1, [sp, 180]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 184]
	add	w0, w0, w1
	str	w0, [sp, 176]
	ldr	w0, [sp, 176]
	and	w0, w0, 255
	add	w0, w0, 96
	strb	w0, [sp, 175]
	add	x0, sp, 24
	add	x1, sp, 104
	mov	x8, x1
	mov	x1, x0
	ldrb	w0, [sp, 175]
	add	x1, sp, 104
	add	x0, sp, 24
	add	x0, sp, 104
	ldr	w0, [sp, 200]
	sub	w0, w0, #2
	str	w0, [sp, 200]
	b	.L9
	ldrsw	x1, [sp, 200]
	add	x0, sp, 56
	ldrb	w0, [x0]
	strb	w0, [sp, 198]
	ldrb	w0, [sp, 198]
	sub	w0, w0, #48
	str	w0, [sp, 192]
	ldr	w0, [sp, 192]
	and	w0, w0, 255
	add	w0, w0, 96
	strb	w0, [sp, 191]
	add	x0, sp, 24
	add	x1, sp, 136
	mov	x8, x1
	mov	x1, x0
	ldrb	w0, [sp, 191]
	add	x1, sp, 136
	add	x0, sp, 24
	add	x0, sp, 136
	ldr	w0, [sp, 200]
	sub	w0, w0, #1
	str	w0, [sp, 200]
	ldr	w0, [sp, 200]
	cmp	w0, 0
	bge	.L10
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 56
	add	x0, sp, 24
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	str	w0, [sp, 204]
	ldr	w0, [sp, 92]
	ldr	w1, [sp, 204]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 208
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	b	.L16
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [sp, 39]
	add	x1, sp, 39
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L20
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L21
	mov	x0, 1
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	strb	w0, [sp, 47]
	str	x1, [sp, 32]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 32]
	add	x0, sp, 64
	add	x1, sp, 56
	mov	x8, x1
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	add	x0, sp, 64
	bl	_ZNSaIcED1Ev
	ldr	x0, [sp, 32]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	mov	x1, x0
	mov	x0, x19
	ldrb	w2, [sp, 47]
	mov	x1, 1
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L27
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L27
	mov	w0, 1
	b	.L28
	mov	w0, 0
	cmp	w0, 0
	beq	.L29
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L30
	add	x0, sp, 56
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	mov	x8, x19
	ldr	x0, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSaIcEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L43
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L43
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