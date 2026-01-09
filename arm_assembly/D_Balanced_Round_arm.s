_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	nop
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	strb	w0, [sp, 8]
	nop
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_ZSt4__lgl:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	clz	x0, x0
	mov	w1, w0
	mov	w0, 63
	sub	w0, w0, w1
	sxtw	x0, w0
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L13
	ldr	x0, [sp]
	b	.L14
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_Z5setupv:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L17
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 92
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 96]
	sxtw	x19, w0
	add	x0, sp, 104
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 104
	add	x0, sp, 64
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 104
	bl	_ZNSaIiED1Ev
	ldr	w0, [sp, 96]
	sxtw	x19, w0
	add	x0, sp, 112
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 112
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 112
	bl	_ZNSaIiED1Ev
	str	wzr, [sp, 124]
	b	.L18
	ldrsw	x1, [sp, 124]
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L19
	add	x0, sp, 64
	mov	x19, x0
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEE3endEv
	mov	x1, x0
	mov	x0, x19
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 120]
	b	.L20
	ldrsw	x1, [sp, 120]
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w19, [x0]
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	sub	w1, w19, w0
	ldr	w0, [sp, 92]
	cmp	w1, w0
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L22
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L23
	add	x1, sp, 32
	add	x0, sp, 36
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 116]
	ldr	w1, [sp, 116]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	add	x0, sp, 40
	bl	_ZNSt6vectorIiSaIiEED1Ev
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	w0, [sp, 100]
	sub	w1, w0, #1
	str	w1, [sp, 100]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
_ZNSaIiEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
_ZNSaIiED2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L38
	ldr	x0, [sp]
	b	.L39
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaIiEC1ERKS_
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIiED1Ev
	cmp	w19, 0
	beq	.L43
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPiEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x1, sp, 48
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZSt4__lgl
	lsl	x0, x0, 1
	mov	w3, w20
	mov	x2, x0
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 2305843009213693951
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIiEC2ERKS_:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiEC2ERKS_
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L63
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x0, x0, 2
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	b	.L72
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L73
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	b	.L71
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w2, w20
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	str	x0, [sp, 88]
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 64]
	add	x1, sp, 72
	add	x0, sp, 64
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L75
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 72
	add	x0, sp, 64
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L77
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w21
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w20
	ldr	x1, [sp, 64]
	b	.L79
	mov	w2, w19
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L85
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L87
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	mov	w3, w4
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 72
	add	x0, sp, 64
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 72
	str	x0, [sp, 88]
	add	x0, sp, 72
	mov	x1, 1
	mov	x19, x0
	add	x0, sp, 64
	mov	x1, 1
	mov	w4, w21
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	mov	x1, 1
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 64]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	add	x1, sp, 64
	add	x0, sp, 72
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L106
	add	x0, sp, 72
	mov	x1, 1
	str	x0, [sp, 88]
	b	.L102
	add	x0, sp, 56
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L103
	add	x0, sp, 88
	ldr	w0, [x0]
	str	w0, [sp, 84]
	add	x0, sp, 88
	mov	x1, 1
	mov	x2, x0
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 72]
	add	x0, sp, 84
	ldr	w19, [x0]
	add	x0, sp, 72
	str	w19, [x0]
	b	.L104
	mov	w0, w21
	mov	w1, w20
	ldr	x0, [sp, 88]
	add	x0, sp, 88
	add	x1, sp, 64
	add	x0, sp, 88
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L105
	b	.L99
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L108
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	add	x1, sp, 48
	add	x0, sp, 72
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L109
	nop
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L119
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIiEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L122
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L123
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	add	x1, sp, 24
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L124
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L126
	add	x0, sp, 32
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L127
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 48
	ldr	w19, [x0]
	add	x0, sp, 40
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, lt
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L133
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L134
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L139
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L136
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L139
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L139
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L137
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L139
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L138
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L139
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L141
	add	x0, sp, 40
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L142
	add	x0, sp, 32
	b	.L143
	add	x0, sp, 32
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L144
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L145
	ldr	x0, [sp, 40]
	b	.L148
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	b	.L141
	ldp	x29, x30, [sp], 48
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
	cset	w0, eq
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 4
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	add	x0, sp, 40
	ldr	w0, [x0]
	str	w0, [sp, 60]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	add	x0, sp, 48
	b	.L160
	add	x0, sp, 48
	ldr	w19, [x0]
	add	x0, sp, 40
	str	w19, [x0]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	add	x0, sp, 48
	add	x1, sp, 60
	add	x0, sp, 32
	ldr	x2, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L161
	add	x0, sp, 60
	ldr	w19, [x0]
	add	x0, sp, 40
	str	w19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 2305843009213693951
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L165
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L166
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	mov	x20, x0
	add	x0, sp, 72
	mov	w3, w21
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x1, sp, 56
	add	x0, sp, 48
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L176
	add	x1, sp, 56
	add	x0, sp, 48
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
	add	x0, sp, 56
	ldr	x1, [sp, 88]
	str	x0, [sp, 72]
	add	x0, sp, 72
	ldr	w0, [x0]
	str	w0, [sp, 68]
	add	x0, sp, 68
	ldr	w0, [x0]
	mov	w4, w19
	mov	w3, w0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L177
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L175
	nop
	b	.L171
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	add	x0, sp, 40
	ldr	w0, [x0]
	str	w0, [sp, 76]
	add	x0, sp, 56
	ldr	w19, [x0]
	add	x0, sp, 40
	str	w19, [x0]
	add	x1, sp, 56
	add	x0, sp, 48
	mov	x19, x0
	add	x0, sp, 76
	ldr	w0, [x0]
	mov	w4, w20
	mov	w3, w0
	mov	x2, x19
	mov	x1, 0
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #4
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 40
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	w19, [x0]
	add	x0, sp, 40
	ldr	w0, [x0]
	cmp	w19, w0
	cset	w0, lt
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L193
	ldr	x0, [sp, 40]
	b	.L194
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	w3, [sp, 36]
	strb	w4, [sp, 32]
	ldr	x0, [sp, 48]
	str	x0, [sp, 112]
	ldr	x0, [sp, 48]
	str	x0, [sp, 120]
	b	.L196
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	mov	x19, x0
	ldr	x0, [sp, 120]
	sub	x1, x0, #1
	add	x0, sp, 56
	mov	x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L197
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	add	x0, sp, 56
	ldr	x1, [sp, 120]
	str	x0, [sp, 80]
	add	x0, sp, 80
	ldr	w19, [x0]
	add	x0, sp, 56
	ldr	x1, [sp, 48]
	str	x0, [sp, 88]
	add	x0, sp, 88
	str	w19, [x0]
	ldr	x0, [sp, 120]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 120]
	cmp	x0, x1
	blt	.L198
	ldr	x0, [sp, 40]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L199
	ldr	x0, [sp, 40]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 120]
	cmp	x0, x1
	bne	.L199
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	sub	x1, x0, #1
	add	x0, sp, 56
	str	x0, [sp, 96]
	add	x0, sp, 96
	ldr	w19, [x0]
	add	x0, sp, 56
	ldr	x1, [sp, 48]
	str	x0, [sp, 104]
	add	x0, sp, 104
	str	w19, [x0]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	add	x0, sp, 32
	add	x0, sp, 72
	mov	w1, w20
	add	x0, sp, 36
	ldr	w0, [x0]
	add	x1, sp, 72
	mov	x4, x1
	mov	w3, w0
	ldr	x2, [sp, 112]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	add	x0, sp, 44
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	asr	x0, x0, 2
	mov	x1, x0
	add	x0, sp, 24
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	w3, [sp, 52]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	b	.L211
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	str	x0, [sp, 80]
	add	x0, sp, 80
	ldr	w19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 88]
	add	x0, sp, 88
	str	w19, [x0]
	ldr	x0, [sp, 104]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L212
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	mov	x1, x0
	add	x0, sp, 52
	mov	x2, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L212
	mov	w0, 1
	b	.L213
	mov	w0, 0
	cmp	w0, 0
	bne	.L214
	add	x0, sp, 52
	ldr	w19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 96]
	add	x0, sp, 96
	str	w19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L218
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L219
	nop
	nop
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 32
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L223
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x3
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L227
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L227
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