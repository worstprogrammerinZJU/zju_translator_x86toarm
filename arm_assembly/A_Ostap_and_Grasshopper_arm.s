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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L3
	ldr	x0, [sp]
	b	.L4
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 48
	add	x0, sp, 84
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 80
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	add	x3, sp, 48
	mov	x2, 0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	str	w0, [sp, 44]
	add	x3, sp, 48
	mov	x2, 0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	str	w0, [sp, 40]
	strb	wzr, [sp, 95]
	add	x1, sp, 40
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 88]
	b	.L6
	ldrsw	x1, [sp, 88]
	add	x0, sp, 48
	ldrb	w0, [x0]
	cmp	w0, 35
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	add	x1, sp, 40
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	sxtw	x1, w0
	add	x0, sp, 48
	ldrb	w0, [x0]
	cmp	w0, 71
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldrsw	x1, [sp, 88]
	add	x0, sp, 48
	ldrb	w0, [x0]
	cmp	w0, 84
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	strb	w0, [sp, 95]
	b	.L8
	add	x1, sp, 40
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	sxtw	x1, w0
	add	x0, sp, 48
	ldrb	w0, [x0]
	cmp	w0, 84
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	ldrsw	x1, [sp, 88]
	add	x0, sp, 48
	ldrb	w0, [x0]
	cmp	w0, 71
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	mov	w0, 1
	strb	w0, [sp, 95]
	b	.L8
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L11
	b	.L8
	nop
	ldrb	w0, [sp, 95]
	cmp	w0, 0
	beq	.L12
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L13
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	mov	w19, 0
	add	x0, sp, 48
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
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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