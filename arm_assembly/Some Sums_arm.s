main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	wzr, [sp, 60]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
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
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L2
	str	wzr, [sp, 52]
	ldr	w0, [sp, 56]
	str	w0, [sp, 48]
	b	.L3
	ldr	w1, [sp, 48]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bgt	.L4
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	b	.L5
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L6
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 60]
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
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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