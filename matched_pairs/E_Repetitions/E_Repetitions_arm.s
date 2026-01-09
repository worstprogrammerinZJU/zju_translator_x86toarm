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
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	str	w0, [sp, 72]
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 32]
	str	wzr, [sp, 76]
	b	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L5
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L6
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L9
	ldr	x0, [sp]
	b	.L10
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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