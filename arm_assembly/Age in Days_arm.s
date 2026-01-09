main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 16]
	mov	w1, 63921
	movk	w1, 0xb38c, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w1, w1, 8
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, -365
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	mov	w1, 34953
	movk	w1, 0x8888, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w1, w1, 4
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	mov	w1, 63921
	movk	w1, 0xb38c, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 8
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 365
	mul	w1, w1, w2
	sub	w1, w0, w1
	mov	w0, 34953
	movk	w0, 0x8888, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	add	w0, w1, w0
	asr	w2, w0, 4
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 4
	sub	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L2
	str	wzr, [sp, 28]
	b	.L3
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bge	.L4
	str	wzr, [sp, 24]
	b	.L3
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bge	.L3
	str	wzr, [sp, 20]
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 24]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w1, [sp, 20]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L8
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