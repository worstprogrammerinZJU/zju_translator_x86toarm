main:
	mov	x12, 44160
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 40960
	add	x0, x0, 3168
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11388]
	b	.L2
	add	x0, sp, 32768
	str	wzr, [x0, 11384]
	b	.L3
	add	x2, sp, 24
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11384]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11388]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x3, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32768
	ldr	w0, [x0, 11384]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11384]
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11384]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11388]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11388]
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11388]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 32768
	str	wzr, [x0, 11380]
	add	x0, sp, 32768
	str	wzr, [x0, 11376]
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L6
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11372]
	mov	x0, 424
	mul	x0, x1, x0
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 11380]
	add	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 11380]
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L7
	add	x0, sp, 32768
	str	wzr, [x0, 11368]
	b	.L8
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	sub	w1, w0, #1
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	sub	w0, w1, w0
	sxtw	x2, w0
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11368]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 11376]
	add	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 11376]
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11368]
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11368]
	cmp	w1, w0
	blt	.L9
	add	x0, sp, 32768
	ldr	w1, [x0, 11380]
	add	x0, sp, 32768
	ldr	w0, [x0, 11376]
	sub	w0, w1, w0
	bl	abs
	add	x1, sp, 32768
	str	w0, [x1, 11364]
	add	x0, sp, 32768
	ldr	w1, [x0, 11364]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 44160
	add	sp, sp, x12
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