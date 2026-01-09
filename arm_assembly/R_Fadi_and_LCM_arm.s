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
_Z3gcdxx:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L3
	ldr	x0, [sp, 24]
	b	.L4
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	_Z3gcdxx
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z3lcmxx:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_Z3gcdxx
	mov	x1, x0
	ldr	x0, [sp, 24]
	sdiv	x1, x0, x1
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	bl	_Z5setupv
	mov	x0, 1
	str	x0, [sp, 40]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x0, 1
	str	x0, [sp, 32]
	b	.L8
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	sdiv	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_Z3lcmxx
	mov	x1, x0
	ldr	x0, [sp, 24]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldr	x0, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mul	x1, x0, x0
	ldr	x0, [sp, 24]
	cmp	x1, x0
	ble	.L10
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	sdiv	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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