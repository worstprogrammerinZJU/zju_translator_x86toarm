_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
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
	bcs	.L4
	ldr	x0, [sp]
	b	.L5
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	cmp	w0, 0
	beq	.L10
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	orr	x1, x2, x1
	str	x1, [x0]
	b	.L11
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	mvn	x1, x0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	and	x1, x2, x1
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 12]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	add	x2, x0, 63
	cmp	x0, 0
	csel	x0, x2, x0, lt
	asr	x0, x0, 6
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 63
	and	x1, x1, 63
	csneg	x0, x0, x1, mi
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L15
	ldr	x0, [sp, 24]
	add	x0, x0, 64
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #8
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	w2, 0
	mov	x1, 0
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	mov	x1, 1
	lsl	x1, x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x3
	bl	_ZNSt14_Bit_referenceC1EPmm
	ldp	x0, x1, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	bl	_ZNKSt13_Bit_iteratordeEv
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 48]
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	bl	_ZNSt13_Bit_iteratorpLEl
	ldp	x0, x1, [sp, 48]
	stp	x0, x1, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	sub	sp, sp, #1152
	stp	x29, x30, [sp]
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 1060
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 1056
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 96
	mov	x19, 39
	mov	x20, x0
	b	.L31
	mov	x0, x20
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	add	x20, x20, 24
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L32
	add	x0, sp, 1064
	bl	_ZNSaIbEC1Ev
	add	x1, sp, 1064
	add	x0, sp, 56
	mov	x2, x1
	mov	x1, 1600
	add	x0, sp, 1064
	bl	_ZNSaIbED1Ev
	mov	w0, 1
	str	w0, [sp, 1148]
	b	.L33
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 48]
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt6vectorIbSaIbEEixEm
	add	x2, sp, 1024
	stp	x0, x1, [x2, 48]
	add	x0, sp, 1072
	mov	w1, 1
	bl	_ZNSt14_Bit_referenceaSEb
	add	x2, sp, 96
	ldrsw	x1, [sp, 1148]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	x1, sp, 48
	ldr	w0, [sp, 1148]
	add	w0, w0, 1
	str	w0, [sp, 1148]
	ldr	w0, [sp, 1056]
	ldr	w1, [sp, 1148]
	cmp	w1, w0
	ble	.L34
	mov	w0, 1
	str	w0, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 1144]
	b	.L35
	mov	w0, 1
	str	w0, [sp, 1140]
	b	.L36
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt6vectorIbSaIbEEixEm
	add	x2, sp, 1024
	stp	x0, x1, [x2, 64]
	add	x0, sp, 1088
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L38
	add	x2, sp, 96
	ldrsw	x1, [sp, 1144]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	x1, sp, 52
	ldr	w0, [sp, 52]
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt6vectorIbSaIbEEixEm
	add	x2, sp, 1024
	stp	x0, x1, [x2, 80]
	add	x0, sp, 1104
	mov	w1, 1
	bl	_ZNSt14_Bit_referenceaSEb
	ldr	w0, [sp, 1140]
	add	w0, w0, 1
	str	w0, [sp, 1140]
	ldr	w0, [sp, 1060]
	ldr	w1, [sp, 1140]
	cmp	w1, w0
	blt	.L37
	ldr	w0, [sp, 1144]
	add	w0, w0, 1
	str	w0, [sp, 1144]
	ldr	w0, [sp, 1056]
	ldr	w1, [sp, 1144]
	cmp	w1, w0
	ble	.L40
	mov	w0, 1
	str	w0, [sp, 1136]
	b	.L41
	add	x2, sp, 96
	ldrsw	x1, [sp, 1136]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 1128]
	ldr	x0, [sp, 1128]
	str	x0, [sp, 40]
	ldr	x0, [sp, 1128]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	str	x0, [sp, 32]
	b	.L42
	add	x0, sp, 40
	ldr	w0, [x0]
	str	w0, [sp, 1124]
	ldr	w1, [sp, 1124]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	add	x0, sp, 40
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L43
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 1136]
	add	w0, w0, 1
	str	w0, [sp, 1136]
	ldr	w0, [sp, 1056]
	ldr	w1, [sp, 1136]
	cmp	w1, w0
	ble	.L44
	mov	w20, 0
	add	x0, sp, 56
	bl	_ZNSt6vectorIbSaIbEED1Ev
	add	x19, sp, 96
	add	x19, x19, 960
	add	x0, sp, 96
	cmp	x19, x0
	beq	.L48
	sub	x19, x19, #24
	mov	x0, x19
	bl	_ZNSt6vectorIiSaIiEED1Ev
	b	.L46
	nop
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 1152
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L50
	ldr	x0, [sp]
	b	.L51
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_ZNSaImED2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiEC2Ev
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
_ZNSaIbEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
_ZNSaIbED2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	wzr, [sp, 63]
	add	x0, sp, 63
	ldr	x3, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, sp, 32
	bl	_ZNKSt13_Bit_iteratorixEl
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L64
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, x0, 4
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	b	.L66
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	ldr	x2, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	nop
	add	sp, sp, 16
	ret
_ZNSaIiEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L83
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
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
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaImED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	add	x0, sp, 64
	mov	w2, 0
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldp	x0, x1, [sp, 64]
	stp	x0, x1, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	adrp	x0, .LC5
	add	x2, x0, :lo12:.LC5
	mov	x1, 1
	ldr	x0, [sp, 56]
	str	x0, [sp, 120]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 112]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	str	x0, [sp, 96]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 120]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 96]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x20, x1, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	str	xzr, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 112]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 4
	str	x0, [sp, 80]
	add	x0, sp, 48
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 104]
	mov	x0, x19
	str	x0, [sp, 80]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 112]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 112]
	mov	x0, x3
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 120]
	lsl	x0, x0, 2
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
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
	nop
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaImEC1IbEERKSaIT_E
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	bl	_ZNSaImED1Ev
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L107
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x0, [sp, 72]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 32]
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofImEPT_RS0_
	mov	x1, x0
	add	x0, sp, 40
	mov	w2, 0
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 40
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	ldr	x1, [sp, 16]
	add	x0, sp, 40
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 56]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 56
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	nop
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L112
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	beq	.L110
	mov	w19, -1
	b	.L111
	mov	w19, 0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	mov	x2, x0
	mov	w1, w19
	ldr	x0, [sp, 56]
	bl	memset
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L115
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 40]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 48
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
	ldr	x0, [sp, 40]
	ldr	w19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	w19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L120
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L121
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L122
	ldr	x0, [sp, 56]
	b	.L123
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L128
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L130
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
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
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
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
	bl	_ZNSaImEC2ERKS_
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 63
	lsr	x0, x0, 6
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	cmp	x0, 0
	beq	.L147
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x0, #8
	bl	_ZSt11__addressofImEPT_RS0_
	add	x0, x0, 8
	b	.L148
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 40
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [x0, 32]
	str	x0, [x1, 32]
	nop
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
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
_ZNSaImEC2ERKS_:
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
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bit_iteratorC1Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	bl	_ZNSt13_Bit_iteratorC1Ev
	ldr	x0, [sp, 24]
	str	xzr, [x0, 32]
	nop
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	beq	.L169
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L170
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiET_S1_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
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
	beq	.L178
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L179
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L186
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L192
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L192
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