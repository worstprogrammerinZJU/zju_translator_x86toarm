main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 100
	str	w0, [sp, 40]
	mov	x0, 100
	bl	_Znam
	str	x0, [sp, 32]
	mov	x0, 100
	bl	_Znam
	str	x0, [sp, 24]
	mov	x0, 100
	bl	_Znam
	str	x0, [sp, 16]
	ldr	x1, [sp, 32]
	adrp	x0, :got:_ZSt3cin
	ldr	x1, [sp, 24]
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 44]
	b	.L2
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	and	w0, w0, 255
	sxtb	w1, w0
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	and	w0, w0, 255
	sxtb	w0, w0
	eor	w0, w1, w0
	sxtb	w0, w0
	and	w1, w0, 255
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L4
	mov	x1, 1
	bl	_ZdlPvm
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L5
	mov	x1, 1
	bl	_ZdlPvm
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L6
	mov	x1, 1
	bl	_ZdlPvm
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x0, 9223372036854775807
	str	x0, [sp, 40]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
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