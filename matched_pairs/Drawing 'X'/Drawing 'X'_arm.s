main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 28]
	b	.L2
	str	wzr, [sp, 24]
	b	.L3
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 20]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w0, w1
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 20]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w0, w1
	beq	.L12
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	nop
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L9
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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