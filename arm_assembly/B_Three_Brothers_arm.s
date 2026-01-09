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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 24]
	cmp	w0, 2
	beq	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L5
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L5
	mov	w1, 3
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L7
	ldr	w0, [sp, 24]
	cmp	w0, 2
	beq	.L8
	ldr	w0, [sp, 24]
	cmp	w0, 3
	bne	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L9
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L10
	ldr	w0, [sp, 24]
	cmp	w0, 1
	beq	.L11
	ldr	w0, [sp, 24]
	cmp	w0, 3
	bne	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L6
	mov	w1, 2
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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