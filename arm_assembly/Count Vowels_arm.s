counter:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	ldrsw	x19, [sp, 36]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	cmp	x19, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	mov	w0, 0
	b	.L1
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 97
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 101
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 105
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 111
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 117
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 65
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 69
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 73
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 79
	beq	.L4
	ldrsw	x0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 85
	bne	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L7
	adrp	x0, counter
	add	x0, x0, :lo12:counter
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, counter
	add	x0, x0, :lo12:counter
	str	w1, [x0]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	add	x0, sp, 48
	ldr	w1, [sp, 36]
	add	x0, sp, 48
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 16
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x1, sp, 16
	add	x0, sp, 48
	add	x0, sp, 48
	mov	w1, 0
	add	x0, sp, 48
	adrp	x0, counter
	add	x0, x0, :lo12:counter
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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