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
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	mov	w0, 2147483647
	str	w0, [sp, 56]
	str	wzr, [sp, 52]
	add	x0, sp, 16
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 60
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 76]
	b	.L3
	ldrsw	x1, [sp, 76]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L5
	add	x1, sp, 56
	add	x0, sp, 52
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L6
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 72]
	add	w0, w1, w0
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	add	x1, sp, 56
	add	x0, sp, 52
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 56]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	ldr	w1, [sp, 72]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 56]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x0, sp, 16
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L13
	ldr	x0, [sp]
	b	.L14
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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