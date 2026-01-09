main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 32]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L2
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	bge	.L3
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	lsl	x0, x0, 1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	b	.L4
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	sub	x0, x0, #1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	b	.L4
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bge	.L5
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	sub	x0, x0, #1
	lsl	x0, x0, 1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	b	.L4
	ldr	x0, [sp, 24]
	lsl	x0, x0, 1
	sub	x0, x0, #1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L9
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L9
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