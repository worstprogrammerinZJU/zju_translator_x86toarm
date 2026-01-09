_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	mov	x2, 0
	mov	w1, 94
	str	x0, [sp, 72]
	str	xzr, [sp, 88]
	str	wzr, [sp, 84]
	b	.L3
	ldrsw	x1, [sp, 84]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 48
	bls	.L4
	ldrsw	x1, [sp, 84]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L4
	mov	w0, 1
	b	.L5
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	ldrsw	x0, [sp, 84]
	ldr	x1, [sp, 72]
	sub	x19, x1, x0
	ldrsw	x1, [sp, 84]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 84]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	bgt	.L7
	ldr	x0, [sp, 72]
	str	w0, [sp, 80]
	b	.L8
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 48
	bls	.L9
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	cmp	w0, 0
	beq	.L11
	ldrsw	x1, [sp, 80]
	ldr	x0, [sp, 72]
	sub	x19, x1, x0
	ldrsw	x1, [sp, 80]
	add	x0, sp, 40
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	mul	x0, x19, x0
	ldr	x1, [sp, 88]
	sub	x0, x1, x0
	str	x0, [sp, 88]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldrsw	x19, [sp, 80]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bne	.L13
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L14
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bge	.L15
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L14
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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