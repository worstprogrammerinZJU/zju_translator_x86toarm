	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
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
	b	.L5
	mov	w0, 51712
	movk	w0, 0x3b9a, lsl 16
	str	w0, [sp, 48]
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
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 52
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, sp, 56
	add	x0, sp, 64
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w19, [x0]
	add	x1, sp, 60
	add	x0, sp, 52
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L5
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 52]
	mov	w1, 23
	sub	w1, w1, w0
	ldr	w0, [sp, 64]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 48]
	add	x1, sp, 44
	add	x0, sp, 48
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 48]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 56]
	add	w1, w0, 24
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 48
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldr	x19, [sp, 16]
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
	bge	.L12
	ldr	x0, [sp]
	b	.L13
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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