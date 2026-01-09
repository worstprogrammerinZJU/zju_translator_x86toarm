_ZL3INF:
main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 172
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 136
	b	.L2
	add	x0, sp, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	mov	x2, 104
	mov	w1, 0
	bl	memset
	add	x0, sp, 136
	str	x0, [sp, 200]
	ldr	x0, [sp, 200]
	str	x0, [sp, 24]
	ldr	x0, [sp, 200]
	str	x0, [sp, 16]
	b	.L3
	add	x0, sp, 24
	ldrb	w0, [x0]
	strb	w0, [sp, 179]
	ldrb	w0, [sp, 179]
	sub	w3, w0, #97
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 24
	add	x1, sp, 16
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 220]
	str	wzr, [sp, 216]
	add	x0, sp, 32
	str	x0, [sp, 192]
	ldr	x0, [sp, 192]
	str	x0, [sp, 208]
	ldr	x0, [sp, 192]
	add	x0, x0, 104
	str	x0, [sp, 184]
	b	.L5
	ldr	x0, [sp, 208]
	ldr	w0, [x0]
	str	w0, [sp, 180]
	ldr	w0, [sp, 180]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	b	.L7
	ldr	w0, [sp, 180]
	cmp	w0, 1
	ble	.L7
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	x0, [sp, 208]
	add	x0, x0, 4
	str	x0, [sp, 208]
	ldr	x1, [sp, 208]
	ldr	x0, [sp, 184]
	cmp	x1, x0
	bne	.L8
	ldr	w0, [sp, 220]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 216]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 172]
	sub	w1, w0, #1
	str	w1, [sp, 172]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 136
	mov	w0, 0
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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