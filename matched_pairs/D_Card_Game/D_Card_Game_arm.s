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
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 96
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 140]
	str	wzr, [sp, 136]
	str	wzr, [sp, 132]
	mov	w0, 1
	strb	w0, [sp, 131]
	strb	wzr, [sp, 130]
	strb	wzr, [sp, 129]
	ldrb	w0, [sp, 131]
	cmp	w0, 0
	beq	.L3
	ldrsw	x19, [sp, 140]
	add	x0, sp, 96
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldrsw	x1, [sp, 140]
	add	x0, sp, 96
	ldrb	w0, [x0]
	cmp	w0, 109
	cset	w0, eq
	strb	w0, [sp, 131]
	ldrsw	x1, [sp, 140]
	add	x0, sp, 96
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	strb	w0, [sp, 129]
	ldrsw	x1, [sp, 140]
	add	x0, sp, 96
	ldrb	w0, [x0]
	cmp	w0, 114
	cset	w0, eq
	strb	w0, [sp, 130]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	b	.L10
	ldrb	w0, [sp, 129]
	cmp	w0, 0
	beq	.L7
	ldrsw	x19, [sp, 136]
	add	x0, sp, 64
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 109
	cset	w0, eq
	strb	w0, [sp, 131]
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	strb	w0, [sp, 129]
	ldrsw	x1, [sp, 136]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 114
	cset	w0, eq
	strb	w0, [sp, 130]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	b	.L10
	ldrb	w0, [sp, 130]
	cmp	w0, 0
	beq	.L10
	ldrsw	x19, [sp, 132]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L5
	ldrsw	x1, [sp, 132]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 109
	cset	w0, eq
	strb	w0, [sp, 131]
	ldrsw	x1, [sp, 132]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 97
	cset	w0, eq
	strb	w0, [sp, 129]
	ldrsw	x1, [sp, 132]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 114
	cset	w0, eq
	strb	w0, [sp, 130]
	ldr	w0, [sp, 132]
	add	w0, w0, 1
	str	w0, [sp, 132]
	b	.L10
	mov	w19, 0
	add	x0, sp, 32
	add	x0, sp, 64
	add	x0, sp, 96
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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