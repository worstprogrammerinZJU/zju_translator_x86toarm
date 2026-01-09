main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	b	.L2
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 65
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 69
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 73
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 79
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 89
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 85
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 97
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 101
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 105
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 111
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 121
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 117
	beq	.L3
	mov	w0, 1
	b	.L4
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 64
	bls	.L6
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 90
	bhi	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	add	w0, w0, 32
	and	w19, w0, 255
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x19
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 40
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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