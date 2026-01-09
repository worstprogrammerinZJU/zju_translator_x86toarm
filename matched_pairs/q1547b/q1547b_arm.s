main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
	str	wzr, [sp, 96]
	b	.L3
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 96]
	str	w0, [sp, 104]
	mov	w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	ldrsw	x19, [sp, 96]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 100]
	cmp	w0, 1
	bne	.L6
	add	x0, sp, 40
	cmp	x0, 1
	beq	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 104]
	str	w0, [sp, 92]
	ldr	w0, [sp, 104]
	str	w0, [sp, 88]
	str	wzr, [sp, 84]
	ldr	w0, [sp, 104]
	str	w0, [sp, 80]
	str	wzr, [sp, 76]
	b	.L9
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w19, w0
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w19, w0
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	str	w0, [sp, 92]
	b	.L11
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w19, w0
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w19, w0
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	b	.L11
	mov	w0, 1
	str	w0, [sp, 84]
	b	.L13
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 40
	sub	x0, x0, #1
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 84]
	cmp	w0, 1
	bne	.L15
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L16
	add	x2, sp, 40
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	ble	.L18
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	bne	.L24
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L24
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