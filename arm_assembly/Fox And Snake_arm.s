main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	ldr	w0, [sp, 44]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	str	wzr, [sp, 40]
	b	.L4
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L5
	b	.L6
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L8
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L9
	b	.L6
	str	wzr, [sp, 32]
	b	.L10
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	ldr	w1, [sp, 32]
	cmp	w1, w0
	blt	.L11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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