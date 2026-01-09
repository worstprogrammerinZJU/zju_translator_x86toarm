_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
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
	ldr	x0, [sp, 16]
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	str	xzr, [sp, 104]
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 68
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 68]
	sxtw	x19, w0
	add	x0, sp, 72
	bl	_ZNSaISt4pairIiiEEC1Ev
	add	x1, sp, 72
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x19
	add	x0, sp, 72
	bl	_ZNSaISt4pairIiiEED1Ev
	str	wzr, [sp, 100]
	b	.L11
	ldrsw	x1, [sp, 100]
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x19, x0
	ldrsw	x1, [sp, 100]
	add	x0, sp, 40
	add	x0, x0, 4
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERi
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 100]
	cmp	w1, w0
	blt	.L12
	add	x0, sp, 40
	add	x1, sp, 80
	mov	x8, x1
	add	x0, sp, 40
	add	x1, sp, 88
	mov	x8, x1
	add	x1, sp, 88
	add	x0, sp, 80
	mov	w2, w20
	str	wzr, [sp, 96]
	b	.L13
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	b	.L13
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w1, [x0]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w19, [x0, 4]
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w0, [x0]
	mul	w0, w19, w0
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w0, [x0]
	ldr	w1, [sp, 64]
	sub	w0, w1, w0
	str	w0, [sp, 64]
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	str	wzr, [x0]
	b	.L13
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w1, [x0]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w1, [x0, 4]
	ldr	w0, [sp, 64]
	mul	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w2, [x0]
	ldr	w1, [sp, 64]
	sub	w1, w2, w1
	str	w1, [x0]
	str	wzr, [sp, 64]
	b	.L13
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w0, [x0, 4]
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	ldrsw	x1, [sp, 96]
	add	x0, sp, 40
	ldr	w1, [x0]
	sub	w1, w1, #1
	str	w1, [x0]
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L17
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 96]
	cmp	w1, w0
	blt	.L18
	ldr	x1, [sp, 104]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	add	x0, sp, 40
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [sp, 48]
	mov	w0, w20
	add	x1, sp, 72
	add	x0, sp, 64
	mov	w2, w19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	bl	_ZNSaISt4pairIiiEEC1ERKS1_
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaISt4pairIiiEED1Ev
	cmp	w19, 0
	beq	.L36
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
	bl	_ZNSaISt4pairIiiEED2Ev
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	strb	w0, [sp, 40]
	add	x0, sp, 40
	add	x0, sp, 56
	mov	w1, w20
	nop
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L61
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4__lgl
	lsl	x2, x0, 1
	add	x1, sp, 56
	add	x0, sp, 48
	ldrb	w3, [sp, 24]
	add	x0, sp, 64
	ldr	x1, [sp, 40]
	add	x0, sp, 72
	ldr	x1, [sp, 32]
	add	x1, sp, 72
	add	x0, sp, 64
	ldrb	w2, [sp, 24]
	nop
	ldp	x29, x30, [sp], 80
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
	bl	_ZNSaISt4pairIiiEEC2ERKS1_
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
	beq	.L69
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
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 16]
	add	x0, sp, 16
	nop
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L84
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L85
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 32]
	add	x0, sp, 72
	ldr	x1, [sp, 32]
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 56
	ldrb	w3, [sp, 16]
	b	.L83
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 32]
	add	x1, sp, 88
	add	x0, sp, 80
	add	x2, sp, 48
	mov	x8, x2
	ldrb	w2, [sp, 16]
	add	x1, sp, 48
	add	x0, sp, 96
	add	x0, sp, 104
	ldr	x1, [sp, 32]
	add	x1, sp, 104
	add	x0, sp, 96
	ldrb	w3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L87
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L89
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	add	x1, sp, 56
	add	x0, sp, 48
	ldrb	w2, [sp, 24]
	add	x0, sp, 64
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	add	x0, sp, 72
	ldr	x1, [sp, 32]
	add	x1, sp, 72
	add	x0, sp, 64
	ldrb	w2, [sp, 24]
	b	.L91
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 32]
	add	x1, sp, 88
	add	x0, sp, 80
	ldrb	w2, [sp, 24]
	nop
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
	beq	.L97
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	b	.L99
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 32]
	add	x0, sp, 72
	ldr	x1, [sp, 24]
	add	x2, sp, 72
	add	x1, sp, 64
	add	x0, sp, 56
	ldrb	w3, [sp, 16]
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 32]
	add	x2, sp, 16
	add	x1, sp, 88
	add	x0, sp, 80
	nop
	ldp	x29, x30, [sp], 96
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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	add	x0, sp, 80
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	add	x1, sp, 64
	add	x0, sp, 88
	add	x0, sp, 96
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 48]
	add	x3, sp, 96
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 72
	ldrb	w4, [sp, 40]
	add	x0, sp, 104
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	add	x0, sp, 112
	ldr	x1, [sp, 48]
	add	x0, sp, 120
	ldr	x1, [sp, 56]
	add	x2, sp, 120
	add	x1, sp, 112
	add	x0, sp, 104
	mov	x8, x19
	ldrb	w3, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	and	w0, w0, 255
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	ldr	x0, [x0]
	str	x0, [sp, 40]
	add	x0, sp, 40
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L126
	add	x0, sp, 80
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	b	.L122
	add	x1, sp, 80
	add	x0, sp, 88
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x2, sp, 96
	add	x1, sp, 88
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L123
	add	x0, sp, 80
	ldr	x0, [x0]
	str	x0, [sp, 72]
	add	x0, sp, 112
	ldr	x1, [sp, 56]
	add	x1, sp, 80
	add	x0, sp, 120
	add	x0, sp, 80
	add	x1, sp, 128
	mov	x8, x1
	mov	x1, 1
	add	x2, sp, 128
	add	x1, sp, 120
	add	x0, sp, 112
	add	x3, sp, 104
	mov	x8, x3
	add	x0, sp, 72
	mov	x19, x0
	ldr	x0, [sp, 56]
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
	b	.L124
	add	x1, sp, 80
	add	x0, sp, 136
	ldrb	w0, [sp, 40]
	add	x0, sp, 136
	mov	w1, w20
	add	x0, sp, 80
	add	x0, sp, 80
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L125
	b	.L119
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	b	.L128
	add	x1, sp, 64
	add	x0, sp, 72
	ldrb	w0, [sp, 40]
	add	x0, sp, 72
	mov	w1, w19
	add	x0, sp, 64
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L129
	nop
	nop
	ldr	x19, [sp, 16]
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L137
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L138
	ldr	x0, [sp, 40]
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
	b	.L141
	add	x1, sp, 48
	add	x0, sp, 72
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x2, sp, 80
	add	x1, sp, 72
	add	x0, sp, 16
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L142
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
	bne	.L143
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
	b	.L147
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
	bne	.L148
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
	beq	.L154
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 32]
	add	x2, sp, 88
	add	x1, sp, 80
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L155
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 104
	ldr	x1, [sp, 40]
	add	x1, sp, 104
	add	x0, sp, 96
	b	.L160
	add	x0, sp, 112
	ldr	x1, [sp, 48]
	add	x0, sp, 120
	ldr	x1, [sp, 32]
	add	x2, sp, 120
	add	x1, sp, 112
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L157
	add	x0, sp, 128
	ldr	x1, [sp, 56]
	add	x0, sp, 136
	ldr	x1, [sp, 32]
	add	x1, sp, 136
	add	x0, sp, 128
	b	.L160
	add	x0, sp, 144
	ldr	x1, [sp, 56]
	add	x0, sp, 152
	ldr	x1, [sp, 48]
	add	x1, sp, 152
	add	x0, sp, 144
	b	.L160
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	add	x0, sp, 168
	ldr	x1, [sp, 32]
	add	x2, sp, 168
	add	x1, sp, 160
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L158
	add	x0, sp, 176
	ldr	x1, [sp, 56]
	add	x0, sp, 184
	ldr	x1, [sp, 48]
	add	x1, sp, 184
	add	x0, sp, 176
	b	.L160
	add	x0, sp, 192
	ldr	x1, [sp, 40]
	add	x0, sp, 200
	ldr	x1, [sp, 32]
	add	x2, sp, 200
	add	x1, sp, 192
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L159
	add	x0, sp, 208
	ldr	x1, [sp, 56]
	add	x0, sp, 216
	ldr	x1, [sp, 32]
	add	x1, sp, 216
	add	x0, sp, 208
	b	.L160
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
	b	.L164
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
	bne	.L165
	ldr	x0, [sp, 48]
	b	.L166
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
	bne	.L167
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L168
	ldr	x1, [sp, 56]
	mov	x0, x19
	b	.L171
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 104
	ldr	x1, [sp, 48]
	add	x1, sp, 104
	add	x0, sp, 96
	ldr	x0, [sp, 56]
	b	.L164
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0, 4]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	strb	w0, [sp, 40]
	add	x0, sp, 40
	mov	x1, x0
	add	x0, sp, 56
	nop
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	b	.L183
	add	x0, sp, 56
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
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
	bne	.L184
	add	x0, sp, 64
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
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
	beq	.L188
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L189
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	bl	_ZNSt4pairIiiEC1IiiLb1EEEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L199
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 40]
	add	x0, sp, 64
	ldr	x0, [x0]
	str	x0, [sp, 56]
	add	x0, sp, 72
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x5, sp, 72
	ldrb	w4, [x0]
	ldr	x3, [x1]
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	mov	x0, x5
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L200
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L198
	nop
	b	.L194
	nop
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
	add	x0, sp, 72
	ldr	x1, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x19, x0
	add	x0, sp, 64
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x5, sp, 72
	ldrb	w4, [x0]
	ldr	x3, [x1]
	mov	x2, x19
	mov	x1, 0
	mov	x0, x5
	nop
	ldr	x19, [sp, 16]
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
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
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x1, [sp, 48]
	mov	x0, x19
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	wzr, [x0]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 4]
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 144]
	ldr	x0, [sp, 64]
	str	x0, [sp, 152]
	b	.L220
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
	beq	.L221
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	str	x0, [sp, 152]
	add	x0, sp, 104
	mov	x8, x0
	ldr	x1, [sp, 152]
	ldr	x0, [sp, 72]
	add	x0, sp, 104
	mov	x19, x0
	add	x0, sp, 112
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 112
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
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
	blt	.L222
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L223
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 152]
	cmp	x0, x1
	bne	.L223
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
	mov	x19, x0
	add	x0, sp, 128
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 128
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
	ldr	x0, [sp, 152]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	add	x0, sp, 40
	mov	x1, x0
	add	x0, sp, 80
	add	x0, sp, 136
	ldr	x1, [sp, 72]
	add	x0, sp, 48
	mov	x1, x0
	add	x2, sp, 80
	add	x0, sp, 136
	mov	x4, x2
	ldr	x3, [x1]
	ldr	x2, [sp, 144]
	ldr	x1, [sp, 64]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt4pairIiiE4swapERS0_
	nop
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
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
	b	.L237
	add	x0, sp, 88
	mov	x8, x0
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 72]
	add	x0, sp, 88
	mov	x19, x0
	add	x0, sp, 96
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 96
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
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
	ble	.L238
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
	beq	.L238
	mov	w0, 1
	b	.L239
	mov	w0, 0
	cmp	w0, 0
	bne	.L240
	add	x0, sp, 48
	mov	x19, x0
	add	x0, sp, 112
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 112
	mov	x1, x19
	bl	_ZNSt4pairIiiEaSEOS0_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x2, x0, 4
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	mov	x1, x0
	mov	x0, x2
	nop
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	b	.L260
	ldr	x0, [sp, 48]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x1, x20
	bl	_ZNSt4pairIiiEaSEOS0_
	ldr	x0, [sp, 72]
	sub	x0, x0, #1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L261
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
	bne	.L269
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L269
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