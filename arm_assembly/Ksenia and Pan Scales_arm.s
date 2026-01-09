main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 128
	add	x0, sp, 96
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 96
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 128
	mov	x2, 0
	mov	w1, 124
	str	w0, [sp, 232]
	ldrsw	x1, [sp, 232]
	add	x0, sp, 128
	add	x2, sp, 160
	mov	x8, x2
	mov	x2, x1
	mov	x1, 0
	add	x1, sp, 160
	add	x0, sp, 64
	add	x0, sp, 160
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 128
	add	x2, sp, 192
	mov	x8, x2
	mov	x2, -1
	add	x1, sp, 192
	add	x0, sp, 32
	add	x0, sp, 192
	str	wzr, [sp, 236]
	b	.L2
	ldrsw	x1, [sp, 236]
	add	x0, sp, 96
	ldrb	w0, [x0]
	strb	w0, [sp, 231]
	add	x0, sp, 64
	mov	x19, x0
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	add	x0, sp, 64
	ldrb	w1, [sp, 231]
	b	.L4
	add	x0, sp, 32
	ldrb	w1, [sp, 231]
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	ldrsw	x19, [sp, 236]
	add	x0, sp, 96
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	add	x0, sp, 64
	mov	x19, x0
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	b	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
	add	x0, sp, 64
	add	x0, sp, 96
	add	x0, sp, 128
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 240
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