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
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	str	xzr, [sp, 72]
	str	xzr, [sp, 64]
	b	.L3
	str	xzr, [sp, 56]
	b	.L4
	ldr	x0, [sp, 64]
	mov	w1, w0
	mov	x0, 1
	lsl	x0, x0, x1
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w1, w0
	mov	x0, 1
	lsl	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	blt	.L5
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bgt	.L5
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L6
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L7
	ldr	x0, [sp, 64]
	sub	w0, w0, #1
	mov	x1, 1
	lsl	x0, x1, x0
	b	.L8
	mov	x0, 1
	ldr	x1, [sp, 24]
	cmp	x0, x1
	ble	.L9
	ldr	x1, [sp, 72]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 80
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