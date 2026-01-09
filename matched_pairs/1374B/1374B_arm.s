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
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	ldr	x0, [sp, 16]
	str	w0, [sp, 36]
	b	.L3
	ldr	w0, [sp, 36]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w2, [sp, 36]
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
	cmp	w1, 0
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L5
	b	.L6
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L8
	ldr	w0, [sp, 36]
	cmp	w0, 1
	beq	.L9
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L10
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	mov	w0, 2
	fmov	d1, d0
	ldr	d0, [sp, 16]
	scvtf	d0, d0
	fmul	d0, d1, d0
	fcvtzs	d0, d0
	str	d0, [sp, 16]
	b	.L11
	ldr	x0, [sp, 16]
	mov	x1, 43691
	movk	x1, 0xaaaa, lsl 16
	movk	x1, 0xaaaa, lsl 32
	movk	x1, 0x2aaa, lsl 48
	smulh	x1, x0, x1
	asr	x0, x0, 63
	sub	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	x0, [sp, 16]
	cmp	x0, 1
	bgt	.L12
	ldr	w1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	nop
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	ldr	w0, [sp, 24]
	scvtf	d1, w0
	bl	pow
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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