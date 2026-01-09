main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 72
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 120]
	str	wzr, [sp, 116]
	str	wzr, [sp, 112]
	b	.L3
	ldrsw	x1, [sp, 112]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 88
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	ldrsw	x19, [sp, 112]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	str	wzr, [sp, 108]
	b	.L6
	ldrsw	x1, [sp, 108]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 88
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldrsw	x19, [sp, 108]
	add	x0, sp, 72
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w19, [x0]
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L9
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 76
	bne	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	cmp	w0, 0
	beq	.L11
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	ble	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bge	.L14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L13
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w19, [x0]
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L15
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 83
	bne	.L15
	mov	w0, 1
	b	.L16
	mov	w0, 0
	cmp	w0, 0
	beq	.L17
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	ble	.L18
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bge	.L19
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L13
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w19, [x0]
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L20
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 77
	bne	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	beq	.L22
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 76
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	add	x0, sp, 40
	sub	x1, x0, #1
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 77
	bne	.L24
	add	x0, sp, 72
	sub	x1, x0, #1
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 83
	bne	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	beq	.L26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 72
	add	x0, sp, 40
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 104]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L27
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L31
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L31
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