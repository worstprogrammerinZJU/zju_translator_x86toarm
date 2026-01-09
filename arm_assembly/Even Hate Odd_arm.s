main:
	sub	x12, sp, #393216
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 6848
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 397312
	add	x0, x0, 2736
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 397312
	add	x0, x0, 2732
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 393216
	str	wzr, [x0, 6844]
	add	x0, sp, 393216
	str	wzr, [x0, 6840]
	add	x0, sp, 393216
	str	wzr, [x0, 6836]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6836]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6836]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	add	x0, sp, 393216
	ldr	w0, [x0, 6844]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6844]
	b	.L5
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6840]
	add	x0, sp, 393216
	ldr	w0, [x0, 6836]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6836]
	add	x0, sp, 393216
	ldr	w0, [x0, 6828]
	add	x1, sp, 393216
	ldr	w1, [x1, 6836]
	cmp	w1, w0
	blt	.L6
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	cmp	w1, w0
	bne	.L7
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	sub	w0, w1, w0
	bl	abs
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	sub	w0, w1, w0
	bl	abs
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 393216
	ldr	w0, [x0, 6832]
	sub	w1, w0, #1
	add	x2, sp, 393216
	str	w1, [x2, 6832]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2752
	add	sp, sp, 397312
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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