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
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L15
	mov	w0, 0
	b	.L16
	mov	w0, 0
	cmp	w0, 0
	beq	.L17
	str	xzr, [sp, 56]
	b	.L18
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	mov	w0, -1
	b	.L16
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	mov	w0, 1
	b	.L16
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L21
	mov	w0, 0
	b	.L16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcmp
	nop
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L23
	ldr	x0, [sp]
	b	.L24
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L26
	ldr	w0, [sp, 28]
	b	.L27
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z7isPrimei:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L29
	mov	w0, 0
	b	.L30
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L31
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 60]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L32
	mov	w0, 0
	b	.L30
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	scvtf	d8, w0
	ldr	w0, [sp, 44]
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L33
	mov	w0, 1
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
_Z3lcmii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3gcdii
	mov	w1, w0
	ldr	w0, [sp, 28]
	sdiv	w1, w0, w1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L37
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L38
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L38
	mov	w0, 1
	b	.L39
	mov	w0, 0
	cmp	w0, 0
	beq	.L40
	mov	w0, 0
	b	.L41
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L42
	mov	w0, 1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 48
	mov	x19, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 48
	mov	x1, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	mov	w19, 1
	b	.L45
	mov	w19, 0
	add	x0, sp, 48
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	b	.L48
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, w1
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	ldr	w0, [sp, 60]
	b	.L50
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L48
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	ble	.L52
	mov	w0, -1
	ldp	x29, x30, [sp], 64
	ret
_Z11printBinaryi:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L54
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L53
	ldr	w0, [sp, 28]
	asr	w0, w0, 1
	bl	_Z11printBinaryi
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	ldp	x29, x30, [sp], 32
	ret
_Z10countBits1i:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L57
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	ldr	w1, [sp, 12]
	and	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L58
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
_Z10countBits0i:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	mov	w0, 32
	str	w0, [sp, 24]
	b	.L61
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	ldr	w1, [sp, 12]
	and	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L62
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	add	sp, sp, 32
	ret
_Z6getBitii:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 16
	ret
_Z7setBit1ii:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 12]
	orr	w0, w1, w0
	add	sp, sp, 16
	ret
_Z7setBit0ii:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w0, w1, w0
	mvn	w1, w0
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	add	sp, sp, 16
	ret
_Z7flipBitii:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 12]
	eor	w0, w1, w0
	add	sp, sp, 16
	ret
_Z8powerOf2i:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
_Z12lastBitValuei:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	neg	w1, w0
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L77
	mov	w0, -1
	b	.L78
	str	wzr, [sp, 44]
	b	.L79
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z7setBit1ii
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L80
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L82
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z7setBit0ii
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L83
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 48
	ret
_Z13findFirstBit0i:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L86
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z6getBitii
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L87
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
_Z13findFirstBit1i:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L90
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z6getBitii
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L91
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 92]
	sxtw	x19, w0
	add	x0, sp, 96
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 96
	add	x0, sp, 56
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 96
	bl	_ZNSaIxED1Ev
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	sxtw	x19, w0
	add	x0, sp, 104
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 104
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 104
	bl	_ZNSaIxED1Ev
	str	wzr, [sp, 124]
	b	.L94
	ldrsw	x1, [sp, 124]
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldrsw	x1, [sp, 124]
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x19, [x0]
	ldrsw	x1, [sp, 124]
	add	x0, sp, 32
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	add	x19, x19, x0
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x19, [x0]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 92]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L95
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 56
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEE3endEv
	mov	x1, x0
	mov	x0, x19
	b	.L96
	add	x0, sp, 84
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 120]
	ldr	w0, [sp, 92]
	str	w0, [sp, 116]
	str	wzr, [sp, 112]
	b	.L97
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 108]
	ldrsw	x1, [sp, 108]
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x1, [x0]
	ldr	w0, [sp, 84]
	sxtw	x0, w0
	cmp	x1, x0
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L98
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 112]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 120]
	b	.L97
	ldr	w0, [sp, 108]
	str	w0, [sp, 116]
	ldr	w1, [sp, 120]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	blt	.L99
	ldr	w0, [sp, 112]
	cmp	w0, 0
	ble	.L100
	ldr	w1, [sp, 112]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x19, x0
	ldrsw	x1, [sp, 112]
	add	x0, sp, 32
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	b	.L96
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 88]
	sub	w1, w0, #1
	str	w1, [sp, 88]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L101
	add	x0, sp, 32
	bl	_ZNSt6vectorIxSaIxEED1Ev
	add	x0, sp, 56
	bl	_ZNSt6vectorIxSaIxEED1Ev
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 40
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	cmp	x19, x0
	bne	.L107
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	cmp	w0, 0
	bne	.L107
	mov	w0, 1
	b	.L108
	mov	w0, 0
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
_ZNSaIxEC2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
_ZNSaIxED2Ev:
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
	lsl	x0, x0, 3
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
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L130
	add	x0, sp, 32
	b	.L128
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	add	x0, sp, 32
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L129
	b	.L125
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaIxEC1ERKS_
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIxED1Ev
	cmp	w19, 0
	beq	.L134
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
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
	asr	x0, x0, 3
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
	bl	_ZSt8_DestroyIPxEvT_S1_
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
	beq	.L146
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
	sub	x1, x0, #1
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
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 1152921504606846975
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIxEC2ERKS_:
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
	bl	_ZNSaIxEC2ERKS_
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
	lsl	x0, x0, 3
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
	beq	.L163
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
	asr	x0, x0, 3
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
	b	.L172
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L173
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	b	.L171
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
	bne	.L175
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
	beq	.L177
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w21
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	mov	x1, 16
	mov	w2, w20
	ldr	x1, [sp, 64]
	b	.L179
	mov	w2, w19
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	add	x0, sp, 47
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	strb	w1, [x0]
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
	beq	.L192
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L194
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
	lsl	x0, x0, 3
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
	bne	.L213
	add	x0, sp, 72
	mov	x1, 1
	str	x0, [sp, 88]
	b	.L209
	add	x0, sp, 56
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 88]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L210
	add	x0, sp, 88
	ldr	x0, [x0]
	str	x0, [sp, 80]
	add	x0, sp, 88
	mov	x1, 1
	mov	x2, x0
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 72]
	add	x0, sp, 80
	ldr	x19, [x0]
	add	x0, sp, 72
	str	x19, [x0]
	b	.L211
	mov	w0, w21
	mov	w1, w20
	ldr	x0, [sp, 88]
	add	x0, sp, 88
	add	x1, sp, 64
	add	x0, sp, 88
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L212
	b	.L206
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
	b	.L215
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	add	x0, sp, 72
	add	x1, sp, 48
	add	x0, sp, 72
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L216
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
	lsl	x0, x0, 3
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
	beq	.L226
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIxEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
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
	b	.L229
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L230
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
	bne	.L231
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L233
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
	bne	.L234
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
	lsl	x0, x0, 3
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
	ldr	x19, [x0]
	add	x0, sp, 40
	ldr	x0, [x0]
	cmp	x19, x0
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
	beq	.L240
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L241
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L246
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L243
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L246
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L246
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L244
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	b	.L246
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L245
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	b	.L246
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
	b	.L248
	add	x0, sp, 40
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L249
	add	x0, sp, 32
	b	.L250
	add	x0, sp, 32
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L251
	add	x1, sp, 32
	add	x0, sp, 40
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L252
	ldr	x0, [sp, 40]
	b	.L255
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, sp, 40
	b	.L248
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
	add	x1, x0, 8
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
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	add	x0, sp, 48
	b	.L267
	add	x0, sp, 48
	ldr	x19, [x0]
	add	x0, sp, 40
	str	x19, [x0]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	add	x0, sp, 48
	add	x1, sp, 56
	add	x0, sp, 32
	ldr	x2, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L268
	add	x0, sp, 56
	ldr	x19, [x0]
	add	x0, sp, 40
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	beq	.L272
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L273
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
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	xzr, [x0]
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
	bne	.L283
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
	ldr	x0, [x0]
	str	x0, [sp, 64]
	add	x0, sp, 64
	ldr	x0, [x0]
	mov	w4, w19
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L284
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L282
	nop
	b	.L278
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
	ldr	x0, [x0]
	str	x0, [sp, 72]
	add	x0, sp, 56
	ldr	x19, [x0]
	add	x0, sp, 40
	str	x19, [x0]
	add	x1, sp, 56
	add	x0, sp, 48
	mov	x19, x0
	add	x0, sp, 72
	ldr	x0, [x0]
	mov	w4, w20
	mov	x3, x0
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
	sub	x1, x0, #8
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
	ldr	x19, [x0]
	add	x0, sp, 40
	ldr	x0, [x0]
	cmp	x19, x0
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
	bne	.L300
	ldr	x0, [sp, 40]
	b	.L301
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 128]
	ldr	x0, [sp, 64]
	str	x0, [sp, 136]
	b	.L303
	ldr	x0, [sp, 136]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 136]
	add	x0, sp, 72
	ldr	x1, [sp, 136]
	mov	x19, x0
	ldr	x0, [sp, 136]
	sub	x1, x0, #1
	add	x0, sp, 72
	mov	x1, x0
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L304
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	add	x0, sp, 72
	ldr	x1, [sp, 136]
	str	x0, [sp, 96]
	add	x0, sp, 96
	ldr	x19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 104]
	add	x0, sp, 104
	str	x19, [x0]
	ldr	x0, [sp, 136]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 136]
	cmp	x0, x1
	blt	.L305
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L306
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 136]
	cmp	x0, x1
	bne	.L306
	ldr	x0, [sp, 136]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 136]
	ldr	x0, [sp, 136]
	sub	x1, x0, #1
	add	x0, sp, 72
	str	x0, [sp, 112]
	add	x0, sp, 112
	ldr	x19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 120]
	add	x0, sp, 120
	str	x19, [x0]
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	add	x0, sp, 40
	add	x0, sp, 88
	mov	w1, w20
	add	x0, sp, 48
	ldr	x0, [x0]
	add	x1, sp, 88
	mov	x4, x1
	mov	x3, x0
	ldr	x2, [sp, 128]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	add	x0, sp, 40
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	str	x1, [x0]
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
	asr	x0, x0, 3
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
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	b	.L318
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	str	x0, [sp, 80]
	add	x0, sp, 80
	ldr	x19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 88]
	add	x0, sp, 88
	str	x19, [x0]
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
	ble	.L319
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	mov	x1, x0
	add	x0, sp, 48
	mov	x2, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L319
	mov	w0, 1
	b	.L320
	mov	w0, 0
	cmp	w0, 0
	bne	.L321
	add	x0, sp, 48
	ldr	x19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	str	x0, [sp, 96]
	add	x0, sp, 96
	str	x19, [x0]
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
	ldr	x0, [x0]
	str	x0, [sp, 40]
	b	.L325
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L326
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
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x1, x0
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
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L330
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x3
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
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
	bne	.L334
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L334
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