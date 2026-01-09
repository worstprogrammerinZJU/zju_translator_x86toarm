main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 32
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 68]
	b	.L2
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 65
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L4
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 68
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldrsw	x1, [sp, 68]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	blt	.L5
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	ble	.L6
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L7
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	bge	.L8
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L7
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	bne	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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