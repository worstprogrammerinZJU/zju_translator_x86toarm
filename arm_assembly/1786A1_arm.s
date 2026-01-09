_ZL3INF:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 60]
	str	xzr, [sp, 48]
	str	xzr, [sp, 40]
	mov	w0, 1
	strb	w0, [sp, 39]
	b	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	beq	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	cmp	w0, 0
	ble	.L5
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L6
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	str	wzr, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	cmp	w0, 0
	ble	.L7
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L8
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	str	wzr, [sp, 28]
	ldrb	w0, [sp, 39]
	eor	w0, w0, 1
	strb	w0, [sp, 39]
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	cmp	w0, 0
	ble	.L9
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L10
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	str	wzr, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	cmp	w0, 0
	ble	.L11
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L12
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	str	wzr, [sp, 28]
	ldrb	w0, [sp, 39]
	eor	w0, w0, 1
	strb	w0, [sp, 39]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L13
	ldr	x1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x1, [sp, 40]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	str	w1, [sp, 32]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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