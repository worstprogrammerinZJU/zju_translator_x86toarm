_ZL3INF:
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	add	x0, sp, 72
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 124]
	str	wzr, [sp, 120]
	b	.L3
	ldrsw	x1, [sp, 120]
	add	x0, sp, 72
	ldrb	w0, [x0]
	strb	w0, [sp, 119]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 72
	ldrb	w0, [x0]
	strb	w0, [sp, 118]
	add	x0, sp, 40
	mov	x2, 0
	ldrb	w1, [sp, 119]
	str	w0, [sp, 112]
	add	x0, sp, 40
	mov	x2, 0
	ldrb	w1, [sp, 118]
	str	w0, [sp, 108]
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 112]
	sub	w0, w1, w0
	bl	abs
	mov	w1, w0
	ldr	w0, [sp, 124]
	add	w0, w0, w1
	str	w0, [sp, 124]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldrsw	x19, [sp, 120]
	add	x0, sp, 72
	sub	x0, x0, #1
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 124]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	add	x0, sp, 72
	add	x0, sp, 40
	ldr	w0, [sp, 104]
	sub	w1, w0, #1
	str	w1, [sp, 104]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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