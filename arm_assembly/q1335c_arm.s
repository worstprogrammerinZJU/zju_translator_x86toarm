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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 32]
	nop
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L15
	add	x0, sp, 120
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 120]
	sxtw	x19, w0
	add	x0, sp, 128
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 128
	add	x0, sp, 96
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 128
	bl	_ZNSaIiED1Ev
	str	wzr, [sp, 152]
	b	.L16
	ldrsw	x1, [sp, 152]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	blt	.L17
	add	x0, sp, 40
	str	wzr, [sp, 92]
	str	wzr, [sp, 148]
	b	.L18
	ldrsw	x1, [sp, 148]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 40
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldrsw	x1, [sp, 148]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 40
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 148]
	cmp	w1, w0
	blt	.L20
	str	wzr, [sp, 88]
	str	wzr, [sp, 140]
	str	wzr, [sp, 144]
	b	.L21
	ldrsw	x1, [sp, 144]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 40
	ldr	w1, [x0]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	ldrsw	x1, [sp, 144]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	add	x0, sp, 40
	ldr	w0, [x0]
	str	w0, [sp, 88]
	ldrsw	x1, [sp, 144]
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	str	w0, [sp, 140]
	ldr	w0, [sp, 144]
	add	w0, w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 144]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 120]
	cmp	w0, 1
	ble	.L24
	ldr	w0, [sp, 88]
	cmp	w0, 1
	ble	.L25
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 92]
	cmp	w1, w0
	bne	.L26
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	add	x1, sp, 92
	add	x0, sp, 136
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L27
	add	x1, sp, 92
	add	x0, sp, 88
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L27
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L27
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	add	x0, sp, 96
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 124]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L28
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	bl	_ZNSt15_Rb_tree_headerC2Ev
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
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 48
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L40
	ldr	x0, [sp, 40]
	add	x0, sp, 48
	mov	x1, x0
	add	x0, sp, 64
	mov	x2, x1
	ldr	x1, [sp, 32]
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L41
	mov	w0, 1
	b	.L42
	mov	w0, 0
	cmp	w0, 0
	beq	.L43
	ldr	x19, [sp, 40]
	add	x1, sp, 48
	add	x0, sp, 72
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	add	x1, sp, 88
	add	x0, sp, 80
	mov	x4, x1
	mov	x3, x0
	ldr	x1, [sp, 72]
	mov	x0, x19
	str	x0, [sp, 48]
	add	x0, sp, 48
	add	x0, x0, 4
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L46
	ldr	x0, [sp]
	b	.L47
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
	beq	.L51
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L64
	ldr	x0, [sp, 16]
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L65
	nop
	nop
	ldp	x29, x30, [sp], 48
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
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldp	x29, x30, [sp], 32
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
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	nop
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x3, x0
	mov	x2, x20
	mov	x1, x19
	ldr	x0, [sp, 72]
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	mov	x2, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	stp	x0, x1, [sp, 80]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L83
	ldr	x0, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x3, [sp, 104]
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	b	.L85
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 80]
	add	x0, sp, 96
	ldr	x0, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	beq	.L93
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
	nop
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
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
	nop
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	ldr	x0, [sp, 48]
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x20, x0
	ldr	x0, [sp, 32]
	mov	x4, x0
	mov	x3, x20
	mov	x2, x19
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 72]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 48
	str	x0, [sp, 80]
	ldr	x19, [sp, 80]
	ldr	x0, [sp, 56]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L123
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L124
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L124
	mov	w0, 1
	b	.L125
	mov	w0, 0
	cmp	w0, 0
	beq	.L126
	str	xzr, [sp, 104]
	ldr	x0, [sp, 56]
	mov	x2, x0
	add	x1, sp, 104
	add	x0, sp, 88
	ldp	x0, x1, [sp, 88]
	b	.L138
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L138
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 80]
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L128
	ldr	x0, [sp, 80]
	str	x0, [sp, 72]
	ldr	x19, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L129
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 56]
	mov	x1, x0
	add	x0, sp, 112
	mov	x2, x1
	mov	x1, x19
	ldp	x0, x1, [sp, 112]
	b	.L138
	ldr	x19, [sp, 56]
	add	x0, sp, 72
	ldr	x0, [x0]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L131
	ldr	x0, [sp, 72]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L132
	str	xzr, [sp, 144]
	add	x2, sp, 72
	add	x1, sp, 144
	add	x0, sp, 128
	ldp	x0, x1, [sp, 128]
	b	.L138
	add	x2, sp, 80
	add	x1, sp, 80
	add	x0, sp, 152
	ldp	x0, x1, [sp, 152]
	b	.L138
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L138
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 80]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L133
	ldr	x0, [sp, 80]
	str	x0, [sp, 64]
	ldr	x19, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L134
	str	xzr, [sp, 184]
	ldr	x0, [sp, 56]
	mov	x2, x0
	add	x1, sp, 184
	add	x0, sp, 168
	ldp	x0, x1, [sp, 168]
	b	.L138
	ldr	x19, [sp, 56]
	add	x0, sp, 64
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L136
	ldr	x0, [sp, 80]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L137
	str	xzr, [sp, 208]
	add	x2, sp, 80
	add	x1, sp, 208
	add	x0, sp, 192
	ldp	x0, x1, [sp, 192]
	b	.L138
	add	x2, sp, 64
	add	x1, sp, 64
	add	x0, sp, 216
	ldp	x0, x1, [sp, 216]
	b	.L138
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	b	.L138
	str	xzr, [sp, 248]
	add	x2, sp, 248
	add	x1, sp, 80
	add	x0, sp, 232
	ldp	x0, x1, [sp, 232]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 256
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 40
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L142
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	beq	.L142
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 32]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L143
	mov	w0, 1
	b	.L144
	mov	w0, 0
	strb	w0, [sp, 79]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	mov	x3, x0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 32]
	ldrb	w0, [sp, 79]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	add	x1, x0, 1
	ldr	x0, [sp, 56]
	str	x1, [x0, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 64]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	beq	.L152
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L154
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, 1
	ldr	x1, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	b	.L164
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L165
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	str	x0, [sp, 48]
	b	.L164
	ldr	x0, [sp, 48]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L166
	add	x0, sp, 72
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
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
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, 1
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x0, [sp, 88]
	str	x1, [sp, 80]
	str	x2, [sp, 72]
	str	x3, [sp, 64]
	str	x4, [sp, 56]
	ldr	x0, [sp, 80]
	mov	x1, x0
	mov	x0, 40
	bl	_ZnwmPv
	ldr	x0, [sp, 88]
	mov	x19, x0
	ldr	x0, [sp, 80]
	mov	x20, x0
	ldr	x0, [sp, 72]
	mov	x21, x0
	ldr	x0, [sp, 64]
	mov	x22, x0
	ldr	x0, [sp, 56]
	mov	x4, x0
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 40]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 32
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 143]
	b	.L184
	ldr	x0, [sp, 64]
	str	x0, [sp, 56]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 64]
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	strb	w0, [sp, 143]
	ldrb	w0, [sp, 143]
	cmp	w0, 0
	beq	.L185
	ldr	x0, [sp, 64]
	b	.L186
	ldr	x0, [sp, 64]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L187
	ldr	x1, [sp, 56]
	add	x0, sp, 48
	ldrb	w0, [sp, 143]
	cmp	w0, 0
	beq	.L188
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L189
	add	x2, sp, 56
	add	x1, sp, 64
	add	x0, sp, 80
	ldp	x0, x1, [sp, 80]
	b	.L192
	add	x0, sp, 48
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIiEclERKiS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L191
	add	x2, sp, 56
	add	x1, sp, 64
	add	x0, sp, 96
	ldp	x0, x1, [sp, 96]
	b	.L192
	str	xzr, [sp, 128]
	add	x2, sp, 128
	add	x1, sp, 48
	add	x0, sp, 112
	ldp	x0, x1, [sp, 112]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 24
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
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
	beq	.L214
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
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x4, x0
	mov	x3, x20
	mov	x2, x19
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
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
	beq	.L235
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L236
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 3689348814741910323
	movk	x0, 0x333, lsl 48
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
	beq	.L247
	ldr	x1, [sp, 32]
	mov	x0, 7378697629483820646
	movk	x0, 0x666, lsl 48
	cmp	x1, x0
	bls	.L248
	bl	_ZSt17__throw_bad_allocv
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x1, x0
	add	x0, sp, 96
	bl	_ZNSt5tupleIJRKiEEC1EOS2_
	add	x19, sp, 96
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 64]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	ldrb	w3, [sp, 104]
	mov	x2, x19
	ldrb	w1, [sp, 88]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	bne	.L259
	ldr	x0, [sp, 40]
	b	.L260
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 16
	mov	w3, w5
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x0, [sp, 48]
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	str	wzr, [x0, 4]
	nop
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L266
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L267
	nop
	nop
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
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L280
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L280
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