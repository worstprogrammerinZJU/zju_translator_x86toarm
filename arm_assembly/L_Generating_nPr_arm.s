	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
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
	bcs	.L6
	ldr	x0, [sp]
	b	.L7
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
	beq	.L12
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	orr	x1, x2, x1
	str	x1, [x0]
	b	.L13
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	_ZNSt14_Bit_referenceaSEb
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	add	w2, w0, 1
	ldr	x1, [sp, 8]
	str	w2, [x1, 8]
	cmp	w0, 63
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	x0, [sp, 8]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 8
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	sub	w2, w0, #1
	ldr	x1, [sp, 8]
	str	w2, [x1, 8]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	x0, [sp, 8]
	mov	w1, 63
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #8
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
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
	bge	.L25
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	sub	x0, x1, x0
	lsl	x1, x0, 3
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	add	x1, x1, x0
	ldr	x0, [sp]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	sub	x0, x1, x0
	add	sp, sp, 16
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
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0, 8]
	mov	w2, w0
	mov	x0, x3
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	w2, [x0, 8]
	add	x0, sp, 64
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
	add	x0, sp, 32
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	strb	w3, [sp, 15]
	ldr	w0, [sp, 20]
	mov	x1, -1
	lsl	x0, x1, x0
	str	x0, [sp, 56]
	mov	w1, 64
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	mov	x1, -1
	lsr	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	and	x0, x1, x0
	str	x0, [sp, 40]
	ldrb	w0, [sp, 15]
	cmp	w0, 0
	beq	.L51
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	orr	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	b	.L53
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	mvn	x0, x0
	and	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	add	sp, sp, 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	mov	x6, x0
	mov	x5, x1
	mov	x1, x2
	mov	x0, x3
	str	x4, [sp, 24]
	str	x6, [sp, 48]
	str	x5, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L55
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	beq	.L56
	ldr	x0, [sp, 72]
	add	x1, x0, 8
	str	x1, [sp, 72]
	ldr	w4, [sp, 56]
	ldr	x1, [sp, 24]
	ldrb	w1, [x1]
	mov	w3, w1
	mov	w2, 64
	mov	w1, w4
	bl	_ZSt14__fill_bvectorPmjjb
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L57
	mov	w0, -1
	b	.L58
	mov	w0, 0
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 72]
	sub	x1, x2, x1
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 72]
	bl	memset
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L60
	ldr	x4, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w3, w0
	mov	w2, w1
	mov	w1, 0
	mov	x0, x4
	bl	_ZSt14__fill_bvectorPmjjb
	b	.L60
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L60
	ldr	x4, [sp, 48]
	ldr	w1, [sp, 56]
	ldr	w2, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	mov	w3, w0
	mov	x0, x4
	bl	_ZSt14__fill_bvectorPmjjb
	nop
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
n:
r:
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
arr:
tmp:
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
vis:
_Z3solv:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	adrp	x0, tmp
	add	x0, x0, :lo12:tmp
	mov	x1, x0
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sxtw	x0, w0
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L69
	adrp	x0, tmp
	add	x0, x0, :lo12:tmp
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	str	x0, [sp, 24]
	ldr	x0, [sp, 96]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	str	x0, [sp, 16]
	b	.L70
	add	x0, sp, 24
	ldr	w0, [x0]
	str	w0, [sp, 92]
	ldr	w1, [sp, 92]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	add	x0, sp, 24
	add	x1, sp, 16
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L71
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	b	.L68
	str	wzr, [sp, 108]
	b	.L73
	ldrsw	x0, [sp, 108]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L74
	ldrsw	x0, [sp, 108]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 48]
	add	x0, sp, 48
	mov	w1, 1
	bl	_ZNSt14_Bit_referenceaSEb
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 68]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, tmp
	add	x0, x0, :lo12:tmp
	bl	_Z3solv
	adrp	x0, tmp
	add	x0, x0, :lo12:tmp
	ldrsw	x0, [sp, 108]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 72]
	add	x0, sp, 72
	mov	w1, 0
	bl	_ZNSt14_Bit_referenceaSEb
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L75
	ldp	x29, x30, [sp], 112
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	adrp	x0, r
	add	x1, x0, :lo12:r
	mov	x0, x2
	bl	_ZNSirsERi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	mov	w2, 0
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_Z3solv
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L79
	ldr	x0, [sp]
	b	.L80
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaImEC2Ev
	ldr	x0, [sp, 24]
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
	ldr	x0, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	sub	x1, x0, #4
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	mov	x0, x2
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L106
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	b	.L108
	ldr	x0, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L108
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 31]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L110
	ldr	x0, [sp, 40]
	stp	x0, x1, [sp, 48]
	ldr	x1, [sp, 32]
	add	x0, sp, 48
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	mov	x2, x0
	ldr	x0, [sp, 40]
	b	.L112
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 112]
	add	x1, sp, 112
	add	x0, sp, 96
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 32]
	sub	x2, x0, x1
	add	x3, sp, 31
	ldr	x1, [sp, 96]
	ldr	x0, [sp, 104]
	mov	x4, x3
	mov	x3, x2
	mov	x2, x0
	ldr	x0, [sp, 40]
	stp	x0, x1, [sp, 80]
	nop
	ldp	x29, x30, [sp], 128
	ret
_ZNSaImEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	beq	.L120
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	nop
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L124
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L133
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 4
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L134
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEE4backEv
	ldp	x19, x20, [sp, 16]
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L144
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bhi	.L139
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bls	.L140
	mov	w0, 1
	b	.L141
	mov	w0, 0
	cmp	w0, 0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L143
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L144
	adrp	x0, .LC5
	add	x2, x0, :lo12:.LC5
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x19, x1, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x3, x0
	ldr	x2, [sp, 48]
	mov	x1, x20
	mov	x0, x19
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x4, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L147
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 32]
	ldr	x0, [sp, 24]
	stp	x0, x1, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 32
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	mov	x0, x2
	str	x1, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 8
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	nop
	add	sp, sp, 32
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x1
	mov	x3, x0
	mov	x0, x2
	mov	x1, x3
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 72]
	mov	x0, x2
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	str	x1, [sp, 56]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	stp	x0, x1, [sp, 88]
	add	x1, sp, 88
	add	x0, sp, 56
	str	x0, [sp, 152]
	add	x0, sp, 56
	stp	x0, x1, [sp, 104]
	ldr	x0, [sp, 40]
	ldrb	w2, [x0]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 112]
	mov	w4, w2
	ldr	x3, [sp, 48]
	mov	x2, x0
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	stp	x0, x1, [sp, 136]
	add	x0, sp, 136
	ldr	x1, [sp, 152]
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 120]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
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
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	cmp	x0, 0
	beq	.L160
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x0, #8
	bl	_ZSt11__addressofImEPT_RS0_
	add	x0, x0, 8
	b	.L161
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
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	str	x0, [sp, 40]
	add	x0, sp, 40
	mov	x1, 1
	str	x0, [sp, 32]
	add	x0, sp, 32
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
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	ldp	x29, x30, [sp], 48
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
	beq	.L175
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
	bcc	.L176
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L177
	ldr	x0, [sp, 56]
	b	.L178
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L181
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L183
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
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPiEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x1, x0, 16
	add	x0, sp, 64
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	add	x0, sp, 64
	mov	w2, 0
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	add	x0, sp, 64
	mov	w2, 0
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
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	mov	x0, x2
	str	x3, [sp, 48]
	strb	w4, [sp, 47]
	str	x1, [sp, 56]
	str	x0, [sp, 64]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L197
	ldr	x0, [sp, 72]
	mov	x19, x0
	ldr	x0, [sp, 72]
	sub	x0, x19, x0
	ldr	x1, [sp, 48]
	cmp	x1, x0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L196
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 144]
	ldr	x0, [sp, 72]
	add	x0, x0, 16
	ldr	x1, [sp, 48]
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 160]
	ldr	x4, [sp, 160]
	ldr	x5, [sp, 168]
	ldr	x2, [sp, 144]
	ldr	x3, [sp, 152]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 64]
	stp	x0, x1, [sp, 128]
	ldr	x1, [sp, 48]
	add	x0, sp, 56
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 176]
	add	x4, sp, 47
	ldr	x2, [sp, 176]
	ldr	x3, [sp, 184]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x0, 16
	bl	_ZNSt13_Bit_iteratorpLEl
	b	.L193
	adrp	x0, .LC7
	add	x2, x0, :lo12:.LC7
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	str	x0, [sp, 296]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 296]
	str	x0, [sp, 288]
	ldr	x0, [sp, 288]
	bl	_ZSt11__addressofImEPT_RS0_
	mov	x1, x0
	add	x0, sp, 112
	mov	w2, 0
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldr	x0, [sp, 72]
	stp	x0, x1, [sp, 208]
	add	x1, sp, 208
	add	x0, sp, 192
	add	x1, sp, 56
	add	x0, sp, 224
	ldr	x5, [sp, 112]
	ldr	x4, [sp, 120]
	ldr	x3, [sp, 224]
	ldr	x2, [sp, 232]
	ldr	x1, [sp, 192]
	ldr	x0, [sp, 200]
	mov	x6, x4
	mov	x4, x2
	mov	x2, x0
	ldr	x0, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x1, [sp, 48]
	add	x0, sp, 96
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 240]
	add	x4, sp, 47
	ldr	x2, [sp, 240]
	ldr	x3, [sp, 248]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 256]
	ldr	x1, [sp, 48]
	add	x0, sp, 96
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 272]
	ldr	x4, [sp, 272]
	ldr	x5, [sp, 280]
	ldr	x2, [sp, 256]
	ldr	x3, [sp, 264]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 64]
	stp	x0, x1, [sp, 80]
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 296]
	lsl	x0, x0, 3
	ldr	x1, [sp, 288]
	add	x1, x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 32]
	ldr	x0, [sp, 72]
	mov	x1, x0
	add	x0, sp, 112
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	ldr	x0, [sp, 72]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 80
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	b	.L193
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 304
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
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 32
	mov	w2, 0
	ldr	x0, [sp, 24]
	stp	x0, x1, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 32
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	x6, x0
	mov	x5, x1
	mov	x1, x2
	mov	x0, x3
	str	x4, [sp, 24]
	str	x6, [sp, 48]
	str	x5, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x2, [sp, 32]
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x4, [sp, 24]
	nop
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
	beq	.L226
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
	bcc	.L227
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L228
	ldr	x0, [sp, 56]
	b	.L229
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	str	x0, [sp, 88]
	mov	x8, x1
	mov	x7, x2
	mov	x2, x4
	mov	x1, x5
	mov	x0, x6
	str	x8, [sp, 72]
	str	x7, [sp, 80]
	str	x3, [sp, 56]
	str	x2, [sp, 64]
	str	x1, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 56]
	ldr	x2, [sp, 40]
	bl	_ZSt4copyIPmS0_ET0_T_S2_S1_
	str	x0, [sp, 152]
	ldr	x1, [sp, 56]
	add	x0, sp, 120
	mov	w2, 0
	add	x0, sp, 136
	mov	w2, 0
	ldr	x1, [sp, 152]
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldr	x4, [sp, 136]
	ldr	x5, [sp, 144]
	ldr	x2, [sp, 56]
	ldr	x3, [sp, 64]
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 128]
	stp	x0, x1, [sp, 104]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 112]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 63
	lsr	x0, x0, 6
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L244
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
	beq	.L249
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L250
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
	sub	sp, sp, #32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	stp	x0, x1, [sp, 128]
	ldr	x4, [sp, 128]
	ldr	x5, [sp, 136]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 144]
	ldr	x1, [sp, 144]
	ldr	x2, [sp, 152]
	add	x0, sp, 32
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	x6, x0
	mov	x5, x1
	mov	x1, x2
	mov	x0, x3
	str	x4, [sp, 24]
	str	x6, [sp, 48]
	str	x5, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x2, [sp, 32]
	ldr	x3, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x4, [sp, 24]
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 9223372036854775744
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	mov	x0, 144115188075855871
	cmp	x1, x0
	bhi	.L261
	ldr	x0, [sp, 32]
	lsl	x0, x0, 6
	b	.L263
	mov	x0, 9223372036854775744
	ldp	x29, x30, [sp], 48
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
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPmET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPmET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	stp	x0, x1, [sp, 128]
	ldr	x4, [sp, 128]
	ldr	x5, [sp, 136]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 144]
	ldr	x1, [sp, 144]
	ldr	x2, [sp, 152]
	add	x0, sp, 32
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
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
	ble	.L280
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
	sub	sp, sp, #32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	mov	x0, x2
	str	x1, [sp, 8]
	str	x0, [sp, 16]
	ldp	x0, x1, [sp, 8]
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 48
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
	beq	.L295
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L296
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
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
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	add	x0, sp, 40
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	stp	x0, x1, [sp, 112]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	stp	x0, x1, [sp, 128]
	ldr	x4, [sp, 128]
	ldr	x5, [sp, 136]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	stp	x0, x1, [sp, 144]
	ldr	x1, [sp, 144]
	ldr	x2, [sp, 152]
	add	x0, sp, 32
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	bne	.L311
	ldr	x0, [sp, 40]
	b	.L312
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	add	x1, sp, 64
	add	x0, sp, 48
	str	x0, [sp, 136]
	b	.L331
	add	x0, sp, 48
	bl	_ZNSt13_Bit_iteratormmEv
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 88]
	add	x0, sp, 32
	bl	_ZNSt13_Bit_iteratormmEv
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 104]
	add	x1, sp, 88
	add	x0, sp, 104
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 0
	bgt	.L332
	ldp	x0, x1, [sp, 32]
	stp	x0, x1, [sp, 120]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 144
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	add	x1, sp, 64
	add	x0, sp, 48
	str	x0, [sp, 136]
	b	.L339
	add	x0, sp, 64
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 88]
	add	x0, sp, 32
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 104]
	add	x1, sp, 88
	add	x0, sp, 104
	add	x0, sp, 64
	bl	_ZNSt13_Bit_iteratorppEv
	add	x0, sp, 32
	bl	_ZNSt13_Bit_iteratorppEv
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 0
	bgt	.L340
	ldp	x0, x1, [sp, 32]
	stp	x0, x1, [sp, 120]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L343
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L344
	nop
	nop
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L346
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 80]
	str	x7, [sp, 88]
	str	x6, [sp, 64]
	str	x2, [sp, 72]
	str	x1, [sp, 48]
	str	x0, [sp, 56]
	add	x1, sp, 80
	add	x0, sp, 64
	str	x0, [sp, 136]
	b	.L349
	add	x0, sp, 80
	and	w19, w0, 255
	add	x0, sp, 48
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 104]
	add	x0, sp, 104
	mov	w1, w19
	bl	_ZNSt14_Bit_referenceaSEb
	add	x0, sp, 80
	add	x0, sp, 48
	bl	_ZNSt13_Bit_iteratorppEv
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	cmp	x0, 0
	bgt	.L350
	ldp	x0, x1, [sp, 48]
	stp	x0, x1, [sp, 120]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L354
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L354
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	adrp	x0, arr
	add	x1, x0, :lo12:arr
	bl	__cxa_atexit
	adrp	x0, tmp
	add	x0, x0, :lo12:tmp
	bl	_ZNSt6vectorIiSaIiEEC1Ev
	adrp	x0, tmp
	add	x1, x0, :lo12:tmp
	bl	__cxa_atexit
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIbSaIbEEC1Ev
	adrp	x0, vis
	add	x1, x0, :lo12:vis
	bl	__cxa_atexit
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret