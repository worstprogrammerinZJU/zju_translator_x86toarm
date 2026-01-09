main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	wzr, [sp, 124]
	add	x0, sp, 72
	add	x0, sp, 40
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 120]
	b	.L2
	ldrsw	x1, [sp, 120]
	add	x0, sp, 72
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 120]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldrsw	x1, [sp, 120]
	add	x0, sp, 72
	ldrb	w0, [x0]
	mov	w19, w0
	ldrsw	x1, [sp, 120]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w19, w0
	bl	abs
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	mov	w1, 10
	sub	w0, w1, w0
	str	w0, [sp, 116]
	add	x1, sp, 116
	add	x0, sp, 108
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [sp, 124]
	add	w0, w1, w0
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 112]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L4
	ldr	w1, [sp, 124]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 40
	add	x0, sp, 72
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L7
	ldr	x0, [sp]
	b	.L8
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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