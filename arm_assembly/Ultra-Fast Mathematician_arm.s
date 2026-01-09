main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 72
	add	x0, sp, 40
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 108]
	b	.L2
	ldrsw	x1, [sp, 108]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L3
	ldrsw	x1, [sp, 108]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L3
	mov	w0, 1
	b	.L4
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L6
	ldrsw	x1, [sp, 108]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L7
	ldrsw	x1, [sp, 108]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L6
	ldrsw	x1, [sp, 108]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L10
	ldrsw	x1, [sp, 108]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L6
	ldrsw	x1, [sp, 108]
	add	x0, sp, 72
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L13
	ldrsw	x1, [sp, 108]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L13
	mov	w0, 1
	b	.L14
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldrsw	x19, [sp, 108]
	add	x0, sp, 72
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	add	x0, sp, 40
	add	x0, sp, 72
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
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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