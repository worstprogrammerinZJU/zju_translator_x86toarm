main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	mov	w0, 97
	str	w0, [sp, 64]
	mov	w0, 122
	str	w0, [sp, 60]
	add	x0, sp, 16
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 52
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 64]
	str	w0, [sp, 76]
	b	.L2
	str	wzr, [sp, 72]
	b	.L3
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L13
	ldrsw	x1, [sp, 72]
	add	x0, sp, 16
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 76]
	cmp	w0, w1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldrsw	x1, [sp, 72]
	add	x0, sp, 16
	mov	x1, x0
	mov	w0, 46
	strb	w0, [x1]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L7
	b	.L5
	nop
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L8
	str	wzr, [sp, 68]
	b	.L9
	ldrsw	x1, [sp, 68]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 46
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	ldrsw	x1, [sp, 68]
	add	x0, sp, 16
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L11
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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