main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 64
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 124]
	str	wzr, [sp, 120]
	str	wzr, [sp, 116]
	add	x0, sp, 64
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	str	x0, [sp, 48]
	ldr	x0, [sp, 104]
	str	x0, [sp, 40]
	b	.L2
	add	x0, sp, 48
	ldrb	w0, [x0]
	strb	w0, [sp, 103]
	ldrb	w0, [sp, 103]
	cmp	w0, 120
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 124]
	add	w0, w0, w1
	str	w0, [sp, 124]
	ldrb	w0, [sp, 103]
	cmp	w0, 88
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 120]
	add	w0, w0, w1
	str	w0, [sp, 120]
	add	x0, sp, 48
	add	x1, sp, 40
	add	x0, sp, 48
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	str	wzr, [sp, 112]
	b	.L4
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 120
	bne	.L5
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 120]
	cmp	w1, w0
	ble	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L7
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	mov	x1, x0
	mov	w0, 88
	strb	w0, [x1]
	ldr	w0, [sp, 124]
	sub	w0, w0, #1
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 88
	bne	.L8
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 120]
	cmp	w1, w0
	bge	.L8
	mov	w0, 1
	b	.L9
	mov	w0, 0
	cmp	w0, 0
	beq	.L10
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	mov	x1, x0
	mov	w0, 120
	strb	w0, [x1]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	ldrsw	x19, [sp, 112]
	add	x0, sp, 64
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	ldr	w1, [sp, 116]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	mov	w19, 0
	add	x0, sp, 64
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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