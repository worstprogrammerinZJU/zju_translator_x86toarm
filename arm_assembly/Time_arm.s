main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 24]
	mov	x1, 31749
	movk	x1, 0x6af3, lsl 16
	movk	x1, 0x59e2, lsl 32
	movk	x1, 0x48d1, lsl 48
	smulh	x1, x0, x1
	asr	x1, x1, 10
	asr	x0, x0, 63
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x3, x0
	ldr	x0, [sp, 24]
	mov	x1, -8608480567731124088
	movk	x1, 0x8889, lsl 0
	smulh	x1, x0, x1
	add	x1, x1, x0
	asr	x1, x1, 5
	asr	x0, x0, 63
	sub	x1, x1, x0
	mov	x0, -8608480567731124088
	movk	x0, 0x8889, lsl 0
	smulh	x0, x1, x0
	add	x0, x0, x1
	asr	x2, x0, 5
	asr	x0, x1, 63
	sub	x2, x2, x0
	mov	x0, x2
	lsl	x0, x0, 4
	sub	x0, x0, x2
	lsl	x0, x0, 2
	sub	x2, x1, x0
	mov	x1, x2
	mov	x0, x3
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x3, x0
	ldr	x1, [sp, 24]
	mov	x0, -8608480567731124088
	movk	x0, 0x8889, lsl 0
	smulh	x0, x1, x0
	add	x0, x0, x1
	asr	x2, x0, 5
	asr	x0, x1, 63
	sub	x2, x2, x0
	mov	x0, x2
	lsl	x0, x0, 4
	sub	x0, x0, x2
	lsl	x0, x0, 2
	sub	x2, x1, x0
	mov	x1, x2
	mov	x0, x3
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