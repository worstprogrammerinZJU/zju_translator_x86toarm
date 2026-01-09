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
_Z7isPrimei:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L3
	mov	w0, 0
	b	.L4
	ldr	w0, [sp, 12]
	cmp	w0, 2
	beq	.L5
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	b	.L4
	mov	x0, 3
	str	x0, [sp, 24]
	b	.L6
	ldrsw	x0, [sp, 12]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L7
	mov	w0, 0
	b	.L4
	ldr	x0, [sp, 24]
	add	x0, x0, 2
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mul	x1, x0, x0
	ldrsw	x0, [sp, 12]
	cmp	x1, x0
	ble	.L8
	mov	w0, 1
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	bl	_Z7isPrimei
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	x2, x0
	ldr	x0, [sp, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	b	.L11
	ldr	x0, [sp, 16]
	sub	w0, w0, #2
	bl	_Z7isPrimei
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	w1, 2
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, #2
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	b	.L11
	mov	w1, 3
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	x0, [sp, 16]
	sub	x0, x0, #3
	str	x0, [sp, 40]
	b	.L13
	ldr	x0, [sp, 40]
	bl	_Z7isPrimei
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	mov	x0, 2
	str	x0, [sp, 32]
	b	.L15
	ldr	x0, [sp, 32]
	bl	_Z7isPrimei
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	ldr	x0, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 32]
	sub	w0, w1, w0
	bl	_Z7isPrimei
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	mov	w0, 1
	b	.L17
	mov	w0, 0
	cmp	w0, 0
	beq	.L18
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	ldr	x1, [sp, 32]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	b	.L22
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	ble	.L20
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bgt	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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