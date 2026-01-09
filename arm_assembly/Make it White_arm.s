main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 156]
	b	.L2
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 152]
	b	.L3
	add	x1, sp, 24
	ldrsw	x0, [sp, 152]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 140]
	b	.L5
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	bne	.L6
	ldr	w0, [sp, 140]
	str	w0, [sp, 148]
	b	.L7
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	b	.L9
	ldrsw	x0, [sp, 136]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	bne	.L10
	ldr	w0, [sp, 136]
	str	w0, [sp, 144]
	b	.L11
	ldr	w0, [sp, 136]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 0
	bge	.L12
	ldr	w1, [sp, 144]
	ldr	w0, [sp, 148]
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	blt	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 160
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