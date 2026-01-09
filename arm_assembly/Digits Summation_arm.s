main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x1, [sp, 24]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x1, x0
	asr	x2, x0, 2
	asr	x0, x1, 63
	sub	x2, x2, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 1
	sub	x2, x1, x0
	ldr	x3, [sp, 16]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x3, x0
	asr	x1, x0, 2
	asr	x0, x3, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	sub	x1, x3, x0
	add	x0, x2, x1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
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