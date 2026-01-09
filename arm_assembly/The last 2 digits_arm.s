main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 40]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 36]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 56]
	ldr	w0, [sp, 32]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 52]
	ldr	w0, [sp, 28]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 48]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	mul	w1, w1, w0
	ldr	w0, [sp, 52]
	mul	w1, w1, w0
	ldr	w0, [sp, 48]
	mul	w0, w1, w0
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 9
	bgt	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 44]
	bl	_ZNSolsEi
	b	.L3
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L7
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L7
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