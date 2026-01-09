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
	bl	_Z5setupv
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 16
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 16
	str	w0, [sp, 56]
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	b	.L4
	ldrsw	x1, [sp, 68]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 76]
	cmp	w0, 0
	bne	.L8
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L9
	ldr	w0, [sp, 72]
	cmp	w0, 0
	bne	.L10
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L9
	strb	wzr, [sp, 67]
	str	wzr, [sp, 60]
	b	.L11
	ldrsw	x1, [sp, 60]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	ldrb	w0, [sp, 67]
	cmp	w0, 0
	beq	.L16
	strb	wzr, [sp, 67]
	b	.L17
	mov	w0, 1
	strb	w0, [sp, 67]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L18
	ldrb	w0, [sp, 67]
	cmp	w0, 0
	beq	.L19
	mov	w0, 1
	b	.L20
	mov	w0, 2
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	add	x0, sp, 16
	ldr	w0, [sp, 52]
	sub	w1, w0, #1
	str	w1, [sp, 52]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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