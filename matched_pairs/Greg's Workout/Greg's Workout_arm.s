	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 32]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L5
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [sp, 44]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 1
	bne	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 32]
	b	.L7
	ldr	w2, [sp, 44]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 2
	bne	.L8
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 28]
	b	.L7
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	add	x1, sp, 28
	add	x0, sp, 32
	bl	_ZSt3maxIiERKT_S2_S2_
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L11
	add	x1, sp, 28
	add	x0, sp, 32
	bl	_ZSt3maxIiERKT_S2_S2_
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L11
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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