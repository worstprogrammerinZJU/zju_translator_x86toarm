main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L2
	add	x1, sp, 32
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 3
	ble	.L4
	str	wzr, [sp, 52]
	b	.L5
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	beq	.L10
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 60]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L7
	nop
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 3
	ble	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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