main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L2
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 16
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	str	wzr, [sp, 64]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	b	.L3
	mov	w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 77
	beq	.L4
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 109
	bne	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	bne	.L7
	b	.L8
	mov	w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 69
	beq	.L9
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 101
	bne	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	bne	.L12
	b	.L13
	mov	w0, 1
	str	w0, [sp, 64]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 79
	beq	.L14
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 111
	bne	.L15
	mov	w0, 1
	b	.L16
	mov	w0, 0
	cmp	w0, 0
	bne	.L17
	b	.L18
	mov	w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 87
	beq	.L19
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 119
	bne	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	bne	.L22
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 68]
	add	w1, w1, w0
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	cmp	w0, 4
	bne	.L23
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bne	.L23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 16
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	ble	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L29
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L29
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