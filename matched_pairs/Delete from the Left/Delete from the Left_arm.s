main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 108]
	add	x0, sp, 64
	sub	w0, w0, #1
	str	w0, [sp, 104]
	add	x0, sp, 32
	sub	w0, w0, #1
	str	w0, [sp, 100]
	b	.L2
	ldrsw	x1, [sp, 104]
	add	x0, sp, 64
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 100]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	str	w0, [sp, 104]
	ldr	w0, [sp, 100]
	sub	w0, w0, #1
	str	w0, [sp, 100]
	ldr	w0, [sp, 104]
	cmp	w0, 0
	blt	.L5
	ldr	w0, [sp, 100]
	cmp	w0, 0
	bge	.L6
	b	.L5
	nop
	add	x0, sp, 64
	mov	x19, x0
	add	x0, sp, 32
	add	x1, x19, x0
	ldr	w0, [sp, 108]
	lsl	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEm
	add	x0, sp, 32
	add	x0, sp, 64
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