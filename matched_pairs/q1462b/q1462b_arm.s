main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 76
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 220]
	b	.L2
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 216]
	str	wzr, [sp, 212]
	b	.L3
	ldr	w0, [sp, 72]
	sub	w1, w0, #4
	ldr	w0, [sp, 212]
	add	w0, w1, w0
	sxtw	x3, w0
	mov	w1, 4
	ldr	w0, [sp, 212]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	add	x2, sp, 80
	mov	x8, x2
	mov	x2, x1
	mov	x1, x3
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 80
	ldrsw	x1, [sp, 212]
	add	x0, sp, 40
	add	x2, sp, 144
	mov	x8, x2
	mov	x2, x1
	mov	x1, 0
	ldr	w0, [sp, 72]
	sub	w1, w0, #4
	ldr	w0, [sp, 212]
	add	w0, w1, w0
	sxtw	x3, w0
	mov	w1, 4
	ldr	w0, [sp, 212]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	add	x2, sp, 176
	mov	x8, x2
	mov	x2, x1
	mov	x1, x3
	add	x1, sp, 176
	add	x0, sp, 144
	add	x2, sp, 112
	mov	x8, x2
	add	x2, sp, 112
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w19, w0, 255
	add	x0, sp, 112
	add	x0, sp, 176
	add	x0, sp, 144
	cmp	w19, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 216]
	ldr	w0, [sp, 212]
	add	w0, w0, 1
	str	w0, [sp, 212]
	ldr	w0, [sp, 212]
	cmp	w0, 4
	ble	.L5
	ldr	w0, [sp, 216]
	cmp	w0, 1
	bne	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	ble	.L8
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	wzr, [sp, 63]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 63]
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 40]
	mov	x20, x0
	ldr	x0, [sp, 32]
	add	x0, x20, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bls	.L12
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	bhi	.L12
	mov	w0, 1
	b	.L13
	mov	w0, 0
	cmp	w0, 0
	beq	.L11
	ldr	x2, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	b	.L14
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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