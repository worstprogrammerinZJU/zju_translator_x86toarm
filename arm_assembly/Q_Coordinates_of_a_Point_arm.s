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
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L3
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	beq	.L3
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L5
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	beq	.L5
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L6
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L6
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bgt	.L17
	b	.L7
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bgt	.L18
	b	.L7
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bmi	.L19
	b	.L10
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bgt	.L20
	b	.L10
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bmi	.L21
	b	.L13
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bmi	.L22
	b	.L13
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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