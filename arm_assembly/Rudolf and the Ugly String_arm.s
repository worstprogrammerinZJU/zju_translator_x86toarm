main:
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 56
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 203]
	b	.L3
	strb	wzr, [sp, 203]
	str	wzr, [sp, 196]
	b	.L4
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 96
	mov	x8, x2
	mov	x2, 4
	add	x2, sp, 96
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w19, w0, 255
	add	x0, sp, 96
	cmp	w19, 0
	beq	.L5
	ldr	w0, [sp, 204]
	add	w0, w0, 2
	str	w0, [sp, 204]
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 56
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	ldr	w0, [sp, 196]
	add	w0, w0, 3
	sxtw	x1, w0
	add	x0, sp, 56
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	mov	w0, 1
	strb	w0, [sp, 203]
	b	.L6
	mov	w20, 0
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 128
	mov	x8, x2
	mov	x2, 3
	mov	w21, 1
	add	x2, sp, 128
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 160
	mov	x8, x2
	mov	x2, 3
	mov	w20, 1
	add	x2, sp, 160
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	mov	w19, 1
	b	.L9
	mov	w19, 0
	cmp	w20, 0
	beq	.L10
	add	x0, sp, 160
	cmp	w21, 0
	beq	.L11
	add	x0, sp, 128
	cmp	w19, 0
	beq	.L6
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	str	w0, [sp, 204]
	ldr	w0, [sp, 196]
	add	w0, w0, 2
	sxtw	x1, w0
	add	x0, sp, 56
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	mov	w0, 1
	strb	w0, [sp, 203]
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	ldr	w0, [sp, 88]
	sub	w0, w0, #2
	ldr	w1, [sp, 196]
	cmp	w1, w0
	blt	.L12
	ldrb	w0, [sp, 203]
	cmp	w0, 0
	bne	.L13
	ldr	w1, [sp, 204]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 56
	ldr	w0, [sp, 92]
	sub	w1, w0, #1
	str	w1, [sp, 92]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 208
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