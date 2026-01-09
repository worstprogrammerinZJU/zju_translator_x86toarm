_ZL3INF:
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	blt	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	b	.L4
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	ble	.L5
	ldr	x1, [sp, 88]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x19, x0
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 88]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 88]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 88]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 88]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 88]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 64]
	add	x1, sp, 64
	add	x0, sp, 56
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L7
	ldr	x1, [sp, 88]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x19, x0
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 88]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 88]
	mul	x1, x2, x1
	sub	x0, x0, x1
	ldr	x1, [sp, 88]
	sub	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 88]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 88]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 80]
	add	x1, sp, 80
	add	x0, sp, 72
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, 0
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 52]
	sub	w1, w0, #1
	str	w1, [sp, 52]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L11
	ldr	x0, [sp]
	b	.L12
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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