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
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 116
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L17
	add	x0, sp, 112
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 108
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 104
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 100]
	sxtw	x19, w0
	add	x0, sp, 120
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 120
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 120
	bl	_ZNSaIxED1Ev
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 108]
	mul	w0, w1, w0
	sxtw	x19, w0
	add	x0, sp, 128
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 128
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 128
	bl	_ZNSaIxED1Ev
	str	wzr, [sp, 236]
	b	.L18
	ldrsw	x1, [sp, 236]
	add	x0, sp, 72
	bl	_ZNSt6vectorIxSaIxEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	ldr	w0, [sp, 100]
	ldr	w1, [sp, 236]
	cmp	w1, w0
	blt	.L19
	add	x0, sp, 72
	add	x1, sp, 136
	mov	x8, x1
	add	x0, sp, 72
	add	x1, sp, 144
	mov	x8, x1
	bl	_ZNSt6vectorIxSaIxEE4rendEv
	add	x1, sp, 144
	add	x0, sp, 136
	str	wzr, [sp, 44]
	b	.L20
	str	wzr, [sp, 40]
	b	.L21
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 108]
	mul	w1, w1, w0
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 216]
	str	wzr, [sp, 152]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 104]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 156]
	add	x1, sp, 156
	add	x0, sp, 152
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 212]
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 104]
	sub	w0, w1, w0
	str	w0, [sp, 160]
	add	x1, sp, 160
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 208]
	str	wzr, [sp, 164]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 104]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 168]
	add	x1, sp, 168
	add	x0, sp, 164
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 204]
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 104]
	sub	w0, w1, w0
	str	w0, [sp, 172]
	add	x1, sp, 172
	add	x0, sp, 40
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 200]
	ldr	w1, [sp, 208]
	ldr	w0, [sp, 212]
	sub	w0, w1, w0
	add	w1, w0, 1
	ldr	w2, [sp, 200]
	ldr	w0, [sp, 204]
	sub	w0, w2, w0
	add	w0, w0, 1
	mul	w0, w1, w0
	sxtw	x19, w0
	ldrsw	x1, [sp, 216]
	add	x0, sp, 48
	bl	_ZNSt6vectorIxSaIxEEixEm
	str	x19, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 112]
	cmp	w1, w0
	blt	.L23
	add	x0, sp, 48
	add	x1, sp, 176
	mov	x8, x1
	add	x0, sp, 48
	add	x1, sp, 184
	mov	x8, x1
	bl	_ZNSt6vectorIxSaIxEE4rendEv
	add	x1, sp, 184
	add	x0, sp, 176
	str	xzr, [sp, 224]
	str	wzr, [sp, 220]
	b	.L24
	ldrsw	x1, [sp, 220]
	add	x0, sp, 72
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x19, [x0]
	ldrsw	x1, [sp, 220]
	add	x0, sp, 48
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mul	x0, x19, x0
	ldr	x1, [sp, 224]
	add	x0, x1, x0
	str	x0, [sp, 224]
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	add	x0, sp, 48
	str	w0, [sp, 196]
	add	x1, sp, 196
	add	x0, sp, 100
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	ldr	x1, [sp, 224]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	add	x0, sp, 48
	bl	_ZNSt6vectorIxSaIxEED1Ev
	add	x0, sp, 72
	bl	_ZNSt6vectorIxSaIxEED1Ev
	ldr	w0, [sp, 116]
	sub	w1, w0, #1
	str	w1, [sp, 116]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 240
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
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	add	x1, sp, 56
	add	x0, sp, 48
	mov	w2, w19
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L40
	ldr	x0, [sp]
	b	.L41
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L43
	ldr	x0, [sp]
	b	.L44
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
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
	beq	.L50
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	ldr	x1, [x1]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L73
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZSt4__lgl
	lsl	x2, x0, 1
	add	x1, sp, 72
	add	x0, sp, 64
	mov	w3, w20
	add	x0, sp, 80
	ldr	x1, [sp, 56]
	add	x0, sp, 88
	ldr	x1, [sp, 48]
	add	x1, sp, 88
	add	x0, sp, 80
	mov	w2, w19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	beq	.L81
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
	ldr	x0, [x0]
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
	cset	w0, eq
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
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	b	.L93
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L94
	add	x0, sp, 88
	ldr	x1, [sp, 72]
	add	x0, sp, 96
	ldr	x1, [sp, 64]
	add	x0, sp, 104
	ldr	x1, [sp, 64]
	add	x2, sp, 104
	add	x1, sp, 96
	add	x0, sp, 88
	mov	w3, w21
	b	.L92
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	add	x0, sp, 112
	ldr	x1, [sp, 72]
	add	x0, sp, 120
	ldr	x1, [sp, 64]
	add	x1, sp, 120
	add	x0, sp, 112
	add	x2, sp, 80
	mov	x8, x2
	mov	w2, w20
	add	x1, sp, 80
	add	x0, sp, 128
	add	x0, sp, 136
	ldr	x1, [sp, 64]
	add	x1, sp, 136
	add	x0, sp, 128
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 80]
	str	x1, [x0]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L96
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L98
	add	x0, sp, 80
	ldr	x1, [sp, 72]
	add	x0, sp, 88
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 72]
	add	x1, sp, 88
	add	x0, sp, 80
	mov	w2, w21
	add	x0, sp, 96
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 72]
	add	x0, sp, 104
	ldr	x1, [sp, 64]
	add	x1, sp, 104
	add	x0, sp, 96
	mov	w2, w20
	b	.L100
	add	x0, sp, 112
	ldr	x1, [sp, 72]
	add	x0, sp, 120
	ldr	x1, [sp, 64]
	add	x1, sp, 120
	add	x0, sp, 112
	mov	w2, w19
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 128
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
	beq	.L106
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L108
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	add	x0, sp, 80
	ldr	x1, [sp, 48]
	add	x0, sp, 88
	ldr	x1, [sp, 40]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 72
	mov	w3, w19
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 104
	ldr	x1, [sp, 48]
	add	x2, sp, 32
	add	x1, sp, 104
	add	x0, sp, 96
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	mov	x19, x8
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 80
	mov	x8, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 88
	ldr	x1, [sp, 72]
	add	x0, sp, 96
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 72]
	add	x1, sp, 80
	add	x0, sp, 104
	add	x0, sp, 112
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 64]
	add	x3, sp, 112
	add	x2, sp, 104
	add	x1, sp, 96
	add	x0, sp, 88
	mov	w4, w21
	add	x0, sp, 120
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 72]
	add	x0, sp, 128
	ldr	x1, [sp, 64]
	add	x0, sp, 136
	ldr	x1, [sp, 72]
	add	x2, sp, 136
	add	x1, sp, 128
	add	x0, sp, 120
	mov	x8, x19
	mov	w3, w20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	add	x0, sp, 40
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, lt
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	strb	w2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L135
	add	x0, sp, 96
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 72]
	b	.L131
	add	x1, sp, 96
	add	x0, sp, 104
	add	x0, sp, 112
	ldr	x1, [sp, 72]
	add	x2, sp, 112
	add	x1, sp, 104
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L132
	add	x0, sp, 96
	ldr	x0, [x0]
	str	x0, [sp, 88]
	add	x0, sp, 128
	ldr	x1, [sp, 72]
	add	x1, sp, 96
	add	x0, sp, 136
	add	x0, sp, 96
	add	x1, sp, 144
	mov	x8, x1
	mov	x1, 1
	add	x2, sp, 144
	add	x1, sp, 136
	add	x0, sp, 128
	add	x3, sp, 120
	mov	x8, x3
	add	x0, sp, 88
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	str	x19, [x0]
	b	.L133
	add	x1, sp, 96
	add	x0, sp, 152
	mov	w0, w21
	add	x0, sp, 152
	mov	w1, w20
	add	x0, sp, 96
	add	x0, sp, 96
	ldr	x1, [sp, 64]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L134
	b	.L128
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	b	.L137
	add	x1, sp, 64
	add	x0, sp, 72
	mov	w0, w20
	add	x0, sp, 72
	mov	w1, w19
	add	x0, sp, 64
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L138
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
	beq	.L148
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 32]
	add	x2, sp, 16
	add	x1, sp, 64
	add	x0, sp, 56
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	b	.L151
	add	x1, sp, 48
	add	x0, sp, 72
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x2, sp, 80
	add	x1, sp, 72
	add	x0, sp, 16
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L152
	add	x0, sp, 88
	ldr	x1, [sp, 40]
	add	x0, sp, 96
	ldr	x1, [sp, 32]
	add	x1, sp, 48
	add	x0, sp, 104
	add	x3, sp, 16
	add	x2, sp, 104
	add	x1, sp, 96
	add	x0, sp, 88
	add	x0, sp, 48
	add	x0, sp, 48
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L153
	nop
	nop
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L157
	ldr	x0, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 32]
	add	x0, sp, 72
	ldr	x1, [sp, 32]
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 56
	ldr	x3, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L158
	nop
	nop
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	add	x0, sp, 72
	ldr	x1, [sp, 40]
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L164
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 32]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L165
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 104
	ldr	x1, [sp, 40]
	add	x1, sp, 104
	add	x0, sp, 96
	b	.L170
	add	x0, sp, 112
	ldr	x1, [sp, 48]
	add	x0, sp, 120
	ldr	x1, [sp, 32]
	add	x2, sp, 120
	add	x1, sp, 112
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L167
	add	x0, sp, 128
	ldr	x1, [sp, 56]
	add	x0, sp, 136
	ldr	x1, [sp, 32]
	add	x1, sp, 136
	add	x0, sp, 128
	b	.L170
	add	x0, sp, 144
	ldr	x1, [sp, 56]
	add	x0, sp, 152
	ldr	x1, [sp, 48]
	add	x1, sp, 152
	add	x0, sp, 144
	b	.L170
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	add	x0, sp, 168
	ldr	x1, [sp, 32]
	add	x2, sp, 168
	add	x1, sp, 160
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L168
	add	x0, sp, 176
	ldr	x1, [sp, 56]
	add	x0, sp, 184
	ldr	x1, [sp, 48]
	add	x1, sp, 184
	add	x0, sp, 176
	b	.L170
	add	x0, sp, 192
	ldr	x1, [sp, 40]
	add	x0, sp, 200
	ldr	x1, [sp, 32]
	add	x2, sp, 200
	add	x1, sp, 192
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L169
	add	x0, sp, 208
	ldr	x1, [sp, 56]
	add	x0, sp, 216
	ldr	x1, [sp, 32]
	add	x1, sp, 216
	add	x0, sp, 208
	b	.L170
	add	x0, sp, 224
	ldr	x1, [sp, 56]
	add	x0, sp, 232
	ldr	x1, [sp, 40]
	add	x1, sp, 232
	add	x0, sp, 224
	nop
	ldp	x29, x30, [sp], 240
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	b	.L174
	ldr	x0, [sp, 56]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [sp, 40]
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L175
	ldr	x0, [sp, 48]
	b	.L176
	ldr	x0, [sp, 48]
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 48]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L177
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L178
	ldr	x1, [sp, 56]
	mov	x0, x19
	b	.L181
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 104
	ldr	x1, [sp, 48]
	add	x1, sp, 104
	add	x0, sp, 96
	ldr	x0, [sp, 56]
	b	.L174
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 80
	ldr	x1, [sp, 56]
	add	x0, sp, 80
	add	x1, sp, 72
	mov	x8, x1
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	add	x0, sp, 96
	add	x1, sp, 88
	mov	x8, x1
	add	x0, sp, 104
	ldr	x1, [sp, 40]
	add	x2, sp, 104
	add	x1, sp, 88
	add	x0, sp, 72
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	b	.L189
	add	x0, sp, 56
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0]
	add	x0, sp, 56
	add	x1, sp, 56
	add	x0, sp, 72
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L190
	add	x0, sp, 64
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	beq	.L194
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L195
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L205
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	add	x0, sp, 80
	mov	x8, x0
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 56]
	add	x0, sp, 80
	ldr	x0, [x0]
	str	x0, [sp, 72]
	add	x0, sp, 88
	ldr	x1, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [x0]
	add	x0, sp, 88
	mov	w4, w19
	mov	x3, x1
	ldr	x2, [sp, 96]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 104]
	cmp	x0, 0
	beq	.L206
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
	b	.L204
	nop
	b	.L200
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x19, x0
	add	x0, sp, 64
	ldr	x1, [x0]
	add	x0, sp, 72
	mov	w4, w20
	mov	x3, x1
	mov	x2, x19
	mov	x1, 0
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	nop
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
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 56]
	add	x0, sp, 88
	add	x1, sp, 80
	mov	x8, x1
	add	x0, sp, 104
	ldr	x1, [sp, 48]
	add	x0, sp, 104
	add	x1, sp, 96
	mov	x8, x1
	add	x0, sp, 120
	ldr	x1, [sp, 40]
	add	x0, sp, 120
	add	x1, sp, 112
	mov	x8, x1
	add	x2, sp, 112
	add	x1, sp, 96
	add	x0, sp, 80
	add	x3, sp, 72
	mov	x8, x3
	add	x1, sp, 72
	add	x0, sp, 64
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
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
	bne	.L224
	ldr	x0, [sp, 40]
	b	.L225
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
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 144]
	ldr	x0, [sp, 64]
	str	x0, [sp, 152]
	b	.L227
	ldr	x0, [sp, 152]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 88
	mov	x8, x0
	ldr	x1, [sp, 152]
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	add	x1, sp, 96
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x2, sp, 96
	add	x1, sp, 88
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L228
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	str	x0, [sp, 152]
	add	x0, sp, 104
	mov	x8, x0
	ldr	x1, [sp, 152]
	ldr	x0, [sp, 72]
	add	x0, sp, 104
	ldr	x19, [x0]
	add	x0, sp, 112
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 112
	str	x19, [x0]
	ldr	x0, [sp, 152]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 152]
	cmp	x0, x1
	blt	.L229
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L230
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 152]
	cmp	x0, x1
	bne	.L230
	ldr	x0, [sp, 152]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 152]
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	add	x1, sp, 120
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 120
	ldr	x19, [x0]
	add	x0, sp, 128
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 128
	str	x19, [x0]
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	add	x0, sp, 40
	add	x0, sp, 80
	mov	w1, w20
	add	x0, sp, 136
	ldr	x1, [sp, 72]
	add	x0, sp, 48
	ldr	x1, [x0]
	add	x2, sp, 80
	add	x0, sp, 136
	mov	x4, x2
	mov	x3, x1
	ldr	x2, [sp, 144]
	ldr	x1, [sp, 64]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 160
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	add	x0, sp, 80
	ldr	x1, [sp, 48]
	add	x0, sp, 88
	ldr	x1, [sp, 40]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 72
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	add	x1, sp, 48
	mov	x8, x1
	add	x0, sp, 48
	mov	x1, x0
	ldr	x0, [sp, 32]
	mov	x8, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -128]!
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
	str	x0, [sp, 120]
	b	.L246
	add	x0, sp, 88
	mov	x8, x0
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 72]
	add	x0, sp, 88
	ldr	x19, [x0]
	add	x0, sp, 96
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 96
	str	x19, [x0]
	ldr	x0, [sp, 120]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 120]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L247
	add	x0, sp, 104
	mov	x8, x0
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 72]
	add	x1, sp, 48
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L247
	mov	w0, 1
	b	.L248
	mov	w0, 0
	cmp	w0, 0
	bne	.L249
	add	x0, sp, 48
	ldr	x19, [x0]
	add	x0, sp, 112
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 112
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	add	x0, sp, 80
	ldr	x1, [sp, 48]
	add	x0, sp, 88
	ldr	x1, [sp, 40]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 72
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	mov	x19, x0
	ldr	x0, [sp, 40]
	sub	x0, x19, x0
	asr	x0, x0, 3
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	b	.L260
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L261
	nop
	nop
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	b	.L268
	ldr	x0, [sp, 48]
	ldr	x20, [x0]
	ldr	x0, [sp, 40]
	str	x20, [x0]
	ldr	x0, [sp, 72]
	sub	x0, x0, #1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L269
	ldr	x1, [sp, 40]
	mov	x0, x19
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	sub	x0, x0, #8
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L277
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L277
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