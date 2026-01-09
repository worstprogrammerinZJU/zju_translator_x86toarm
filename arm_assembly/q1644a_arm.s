main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 76
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
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	str	wzr, [sp, 84]
	str	wzr, [sp, 80]
	b	.L3
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 114
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 104]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 103
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	str	w0, [sp, 100]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 98
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	mov	w0, 1
	str	w0, [sp, 96]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L7
	ldr	w0, [sp, 104]
	cmp	w0, 1
	bne	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	str	w0, [sp, 92]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 66
	bne	.L10
	ldr	w0, [sp, 96]
	cmp	w0, 1
	bne	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	mov	w0, 1
	str	w0, [sp, 84]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 71
	bne	.L13
	ldr	w0, [sp, 100]
	cmp	w0, 1
	bne	.L13
	mov	w0, 1
	b	.L14
	mov	w0, 0
	cmp	w0, 0
	beq	.L15
	mov	w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldrsw	x19, [sp, 80]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 84]
	add	w1, w1, w0
	ldr	w0, [sp, 88]
	add	w0, w1, w0
	cmp	w0, 3
	bne	.L17
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L18
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	ble	.L19
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L23
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L23
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