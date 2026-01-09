main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	str	w0, [sp, 72]
	str	wzr, [sp, 76]
	b	.L2
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	beq	.L3
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	beq	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L4
	mov	w0, 1
	b	.L5
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	bne	.L7
	ldr	w0, [sp, 72]
	sub	w1, w0, #1
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	bne	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	ldr	w0, [sp, 72]
	sub	w1, w0, #1
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	b	.L10
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 72]
	sub	w1, w0, #1
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	b	.L10
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldr	w0, [sp, 72]
	sub	w1, w0, #1
	ldr	w0, [sp, 76]
	sub	w0, w1, w0
	sxtw	x1, w0
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	b	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w20, 0
	mov	w19, 0
	b	.L12
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 76]
	cmp	w0, w1
	blt	.L13
	ldr	w0, [sp, 72]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L14
	ldr	w0, [sp, 72]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 63
	bne	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L16
	ldr	w0, [sp, 72]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w19, 1
	add	x0, sp, 40
	cmp	w19, 1
	bne	.L18
	mov	w20, 0
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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