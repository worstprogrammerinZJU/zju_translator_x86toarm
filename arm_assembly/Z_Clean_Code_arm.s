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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 40
	strb	wzr, [sp, 79]
	b	.L3
	strb	wzr, [sp, 78]
	add	x0, sp, 40
	cmp	x0, 0
	beq	.L4
	add	x2, sp, 40
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L7
	b	.L3
	str	wzr, [sp, 72]
	b	.L8
	ldrsw	x1, [sp, 72]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L9
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L9
	ldrb	w0, [sp, 79]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	cmp	w0, 0
	bne	.L23
	ldrsw	x1, [sp, 72]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L13
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L13
	mov	w0, 1
	b	.L14
	mov	w0, 0
	cmp	w0, 0
	beq	.L15
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	mov	w0, 1
	strb	w0, [sp, 79]
	b	.L16
	ldrsw	x1, [sp, 72]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L17
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L17
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L17
	mov	w0, 1
	b	.L18
	mov	w0, 0
	cmp	w0, 0
	beq	.L19
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	strb	wzr, [sp, 79]
	b	.L16
	ldrb	w0, [sp, 79]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	ldrsw	x1, [sp, 72]
	add	x0, sp, 40
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 1
	strb	w0, [sp, 78]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldrsw	x19, [sp, 72]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L20
	b	.L12
	nop
	ldrb	w0, [sp, 78]
	cmp	w0, 0
	beq	.L3
	ldrb	w0, [sp, 79]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x1, [x0]
	sub	x1, x1, #24
	ldr	x1, [x1]
	add	x0, x0, x1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L28
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L28
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