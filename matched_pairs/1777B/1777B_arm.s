_ZL3INF:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	sub	x1, x0, #1
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	str	x0, [sp, 40]
	mov	x0, 1
	str	x0, [sp, 32]
	b	.L3
	ldr	x0, [sp, 40]
	mov	x1, 36837
	movk	x1, 0x12a2, lsl 16
	movk	x1, 0x5f31, lsl 32
	movk	x1, 0x8970, lsl 48
	smulh	x1, x0, x1
	add	x1, x1, x0
	asr	x2, x1, 29
	asr	x1, x0, 63
	sub	x1, x2, x1
	mov	x2, 51719
	movk	x2, 0x3b9a, lsl 16
	mul	x1, x1, x2
	sub	x1, x0, x1
	ldr	x0, [sp, 32]
	mul	x0, x1, x0
	mov	x1, 36837
	movk	x1, 0x12a2, lsl 16
	movk	x1, 0x5f31, lsl 32
	movk	x1, 0x8970, lsl 48
	smulh	x1, x0, x1
	add	x1, x1, x0
	asr	x2, x1, 29
	asr	x1, x0, 63
	sub	x2, x2, x1
	mov	x1, 51719
	movk	x1, 0x3b9a, lsl 16
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 32]
	cmp	x1, x0
	ble	.L4
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
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