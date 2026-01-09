main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 72
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	str	w0, [sp, 124]
	str	wzr, [sp, 120]
	str	wzr, [sp, 112]
	mov	w0, 1
	str	w0, [sp, 116]
	b	.L3
	ldrsw	x1, [sp, 116]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L6
	ldrsw	x1, [sp, 116]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	str	w0, [sp, 120]
	b	.L5
	nop
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldrsw	x19, [sp, 116]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 120]
	sub	w0, w1, w0
	str	w0, [sp, 112]
	ldr	w1, [sp, 112]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x0, sp, 72
	add	x0, sp, 40
	ldr	w0, [sp, 108]
	sub	w1, w0, #1
	str	w1, [sp, 108]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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