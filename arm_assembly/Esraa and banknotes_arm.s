main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 16]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 4
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, -50
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 3
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldr	w2, [sp, 28]
	mov	w0, -50
	mul	w2, w2, w0
	ldr	w0, [sp, 16]
	add	w2, w2, w0
	ldr	w3, [sp, 24]
	mov	w0, -20
	mul	w0, w3, w0
	add	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
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