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
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	strb	wzr, [sp, 79]
	str	wzr, [sp, 72]
	b	.L4
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w19, [x0]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	strb	w0, [sp, 79]
	b	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldrsw	x19, [sp, 72]
	add	x0, sp, 32
	sub	x0, x0, #1
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L8
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L9
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEm
	mov	w1, 10
	add	x0, sp, 32
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
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