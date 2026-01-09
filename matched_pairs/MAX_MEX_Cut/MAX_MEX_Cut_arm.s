main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 64
	add	x0, sp, 32
	str	wzr, [sp, 100]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 108]
	str	wzr, [sp, 104]
	b	.L3
	ldrsw	x1, [sp, 108]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L4
	ldrsw	x1, [sp, 108]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	beq	.L5
	ldrsw	x1, [sp, 108]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L6
	ldrsw	x1, [sp, 108]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 104]
	add	w0, w0, 2
	str	w0, [sp, 104]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	b	.L3
	ldrsw	x1, [sp, 108]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L9
	ldrsw	x1, [sp, 108]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L12
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L12
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 108]
	cmp	w1, w0
	beq	.L12
	mov	w0, 1
	b	.L13
	mov	w0, 0
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 104]
	add	w0, w0, 2
	str	w0, [sp, 104]
	ldr	w0, [sp, 108]
	add	w0, w0, 2
	str	w0, [sp, 108]
	b	.L3
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	b	.L3
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L15
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L15
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 108]
	cmp	w1, w0
	beq	.L15
	mov	w0, 1
	b	.L16
	mov	w0, 0
	cmp	w0, 0
	beq	.L17
	ldr	w0, [sp, 104]
	add	w0, w0, 2
	str	w0, [sp, 104]
	ldr	w0, [sp, 108]
	add	w0, w0, 2
	str	w0, [sp, 108]
	b	.L3
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	nop
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L18
	ldr	w1, [sp, 104]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	blt	.L19
	add	x0, sp, 32
	add	x0, sp, 64
	mov	w0, 0
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