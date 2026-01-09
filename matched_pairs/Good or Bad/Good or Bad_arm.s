main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	strb	wzr, [sp, 79]
	str	wzr, [sp, 72]
	b	.L3
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 2
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	beq	.L5
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 2
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	mov	w0, 1
	strb	w0, [sp, 79]
	b	.L9
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldrsw	x19, [sp, 72]
	add	x0, sp, 32
	sub	x0, x0, #2
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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