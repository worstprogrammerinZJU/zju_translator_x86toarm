main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 48
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 50
	strb	w0, [sp, 111]
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
	add	x0, sp, 48
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 40]
	ldr	x0, [sp, 88]
	str	x0, [sp, 32]
	b	.L2
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 87]
	ldrb	w1, [sp, 87]
	ldrb	w0, [sp, 111]
	cmp	w1, w0
	beq	.L3
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 111]
	mov	w0, 1
	str	w0, [sp, 100]
	b	.L4
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 100]
	b	.L6
	ldr	w0, [sp, 104]
	str	w0, [sp, 104]
	ldr	w0, [sp, 104]
	cmp	w0, 7
	bne	.L4
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	b	.L7
	add	x0, sp, 40
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	add	x0, sp, 48
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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