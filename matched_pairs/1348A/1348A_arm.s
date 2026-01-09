main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	add	x0, sp, 144
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 2
	str	w0, [sp, 172]
	str	wzr, [sp, 168]
	b	.L2
	ldrsw	x0, [sp, 168]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [sp, 172]
	str	w2, [x1, x0]
	ldr	w0, [sp, 172]
	lsl	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 168]
	add	w0, w0, 1
	str	w0, [sp, 168]
	ldr	w0, [sp, 168]
	cmp	w0, 29
	ble	.L3
	b	.L4
	add	x0, sp, 140
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 164]
	str	wzr, [sp, 160]
	str	wzr, [sp, 156]
	b	.L5
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 164]
	add	w0, w1, w0
	str	w0, [sp, 164]
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 140]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sub	w0, w0, #1
	ldr	w1, [sp, 156]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 140]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 164]
	add	w0, w1, w0
	str	w0, [sp, 164]
	ldr	w0, [sp, 140]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sub	w0, w0, #1
	str	w0, [sp, 152]
	b	.L7
	ldrsw	x0, [sp, 152]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 160]
	add	w0, w1, w0
	str	w0, [sp, 160]
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 140]
	sub	w0, w0, #1
	ldr	w1, [sp, 152]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 164]
	ldr	w0, [sp, 160]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 148]
	ldr	w1, [sp, 148]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 144]
	sub	w1, w0, #1
	str	w1, [sp, 144]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 176
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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