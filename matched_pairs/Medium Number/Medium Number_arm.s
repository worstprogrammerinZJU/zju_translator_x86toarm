	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L5
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, sp, 20
	add	x0, sp, 24
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L6
	add	x1, sp, 20
	add	x0, sp, 24
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 16]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L5
	add	x1, sp, 20
	add	x0, sp, 16
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L10
	add	x1, sp, 20
	add	x0, sp, 16
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L5
	add	x1, sp, 24
	add	x0, sp, 16
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L13
	add	x1, sp, 24
	add	x0, sp, 16
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L13
	mov	w0, 1
	b	.L14
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L18
	ldr	x0, [sp]
	b	.L19
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L22
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L22
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