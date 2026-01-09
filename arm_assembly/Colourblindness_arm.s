main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 64
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	mov	w0, 1
	strb	w0, [sp, 111]
	str	wzr, [sp, 104]
	b	.L3
	ldrsw	x1, [sp, 104]
	add	x0, sp, 32
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 104]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w19, w0
	beq	.L4
	ldrsw	x1, [sp, 104]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 82
	beq	.L5
	ldrsw	x1, [sp, 104]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L4
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L7
	strb	wzr, [sp, 111]
	b	.L8
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 104]
	cmp	w1, w0
	blt	.L9
	ldrb	w0, [sp, 111]
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L11
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 100]
	sub	w1, w0, #1
	str	w1, [sp, 100]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
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