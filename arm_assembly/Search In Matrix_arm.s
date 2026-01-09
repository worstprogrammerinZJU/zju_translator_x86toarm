main:
	mov	x12, 44160
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 32768
	str	wzr, [x0, 11388]
	add	x0, sp, 40960
	add	x0, x0, 3176
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 40960
	add	x0, x0, 3172
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11384]
	b	.L2
	add	x0, sp, 32768
	str	wzr, [x0, 11380]
	b	.L3
	add	x2, sp, 32
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11380]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11384]
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
	ldr	w0, [x0, 11380]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11380]
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	x1, sp, 32768
	ldr	w1, [x1, 11380]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11384]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11384]
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	x1, sp, 32768
	ldr	w1, [x1, 11384]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11376]
	b	.L6
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L7
	add	x0, sp, 32768
	ldrsw	x2, [x0, 11372]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11376]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11388]
	b	.L9
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L10
	add	x0, sp, 32768
	ldr	w0, [x0, 11376]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11376]
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	x1, sp, 32768
	ldr	w1, [x1, 11376]
	cmp	w1, w0
	blt	.L11
	add	x0, sp, 32768
	ldr	w0, [x0, 11388]
	cmp	w0, 1
	bne	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L13
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
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