main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 31
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldrb	w0, [sp, 31]
	sub	w0, w0, #97
	sxtw	x1, w0
	ldr	x0, [sp, 16]
	add	x2, x1, x0
	mov	x0, 20165
	movk	x0, 0xc4ec, lsl 16
	movk	x0, 0xec4e, lsl 32
	movk	x0, 0x4ec4, lsl 48
	smulh	x0, x2, x0
	asr	x1, x0, 3
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	sub	x1, x2, x0
	and	w0, w1, 255
	add	w0, w0, 97
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L5
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L5
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