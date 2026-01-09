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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 511
	bhi	.L7
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L9
	mov	x0, 1
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L13
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 16
	bl	_ZNSt5dequeIiSaIiEEC1Ev
	ldr	w0, [sp, 100]
	str	w0, [sp, 96]
	b	.L14
	add	x1, sp, 96
	add	x0, sp, 16
	add	x0, sp, 16
	bl	_ZNSt5dequeIiSaIiEE4backEv
	mov	x1, x0
	add	x0, sp, 16
	add	x0, sp, 16
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	str	w0, [sp, 96]
	ldr	w0, [sp, 96]
	cmp	w0, 0
	bgt	.L15
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L16
	ldrsw	x1, [sp, 108]
	add	x0, sp, 16
	bl	_ZNSt5dequeIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	ldr	w0, [sp, 100]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	beq	.L17
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 100]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	ble	.L18
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 16
	bl	_ZNSt5dequeIiSaIiEED1Ev
	ldr	w0, [sp, 104]
	sub	w1, w0, #1
	str	w1, [sp, 104]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L22
	ldr	x0, [sp]
	b	.L23
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	mov	x1, 0
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L27
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE5beginEv
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE3endEv
	ldr	x0, [sp, 24]
	mov	x2, x0
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	beq	.L30
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	sub	x0, x0, #4
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	sub	x1, x0, #4
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L32
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE3endEv
	add	x0, sp, 32
	add	x0, sp, 32
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	beq	.L36
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	sub	x1, x0, #4
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	b	.L38
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	ldr	x1, [sp, 16]
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	x0, 4
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x0, x0, x1
	add	x0, x0, 1
	str	x0, [sp, 88]
	mov	x0, 8
	str	x0, [sp, 56]
	ldr	x0, [sp, 88]
	add	x0, x0, 2
	str	x0, [sp, 64]
	add	x1, sp, 64
	add	x0, sp, 56
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	mov	x0, 4
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L45
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L46
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 56
	mov	x8, x0
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	add	x0, sp, 56
	bl	_ZNSaIPiED1Ev
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
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
	add	x0, x0, 48
	mov	x1, x0
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #96
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	nop
	add	sp, sp, 96
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L57
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x1, 1
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	sub	x19, x0, #8
	mov	x0, x1
	str	x0, [x19]
	ldr	x0, [sp, 40]
	add	x2, x0, 16
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 32]
	sub	x1, x0, #4
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 16]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bne	.L59
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x1, x0, #4
	ldr	x0, [sp, 24]
	str	x1, [x0]
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
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 56]
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x1, x0, #4
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, sp, 32
	ldp	x29, x30, [sp], 64
	ret
_ZNSaIiEC2Ev:
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
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	nop
	ldp	x29, x30, [sp], 32
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
	mov	x8, x0
	ldr	x0, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	mov	x19, x0
	nop
	add	x0, sp, 56
	bl	_ZNSaIPiED1Ev
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L73
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L74
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	lsl	x0, x0, 2
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	mov	x0, 4
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
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
	bl	_ZNSaIPiEC1IiEERKSaIT_E
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIPiED2Ev:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
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
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	nop
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, x2
	ldp	x29, x30, [sp], 32
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
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	cmp	x0, x1
	bls	.L91
	mov	w2, 1
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	ldr	x19, [sp, 40]
	mov	x0, 4
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
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
	ldr	x0, [sp, 8]
	str	xzr, [x0, 24]
	nop
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
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, 4
	ldp	x29, x30, [sp], 16
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
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	x0, x0, 255
	sub	x0, x1, x0
	mul	x0, x2, x0
	ldr	x1, [sp, 24]
	ldr	x2, [x1]
	ldr	x1, [sp, 24]
	ldr	x1, [x1, 8]
	sub	x1, x2, x1
	asr	x1, x1, 2
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	ldr	x2, [x1, 16]
	ldr	x1, [sp, 16]
	ldr	x1, [x1]
	sub	x1, x2, x1
	asr	x1, x1, 2
	add	x0, x0, x1
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 9223372036854775807
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	x0, x0, 1
	str	x0, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 96]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 1
	cmp	x1, x0
	bls	.L115
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x2, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L116
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L117
	mov	x0, 0
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L118
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	b	.L119
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x4, x0, 8
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	b	.L119
	ldr	x0, [sp, 56]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	add	x1, sp, 48
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	add	x0, x0, 2
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x0, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x0, x0, 1
	lsl	x1, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L120
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L121
	mov	x0, 0
	add	x0, x0, x1
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 56]
	add	x2, x0, 48
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	blt	.L125
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bge	.L125
	mov	w0, 1
	b	.L126
	mov	w0, 0
	cmp	w0, 0
	beq	.L127
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	b	.L128
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L129
	mov	x1, x0
	ldr	x0, [sp, 56]
	sdiv	x0, x0, x1
	b	.L130
	ldr	x0, [sp, 56]
	mvn	x19, x0
	udiv	x0, x19, x0
	mvn	x0, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	mov	x1, x0
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
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
	beq	.L135
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L136
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
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
	nop
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
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
	beq	.L150
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L151
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
	ldp	x29, x30, [sp], 32
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
	add	x0, sp, 40
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	add	x0, sp, 40
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
	beq	.L174
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
	beq	.L177
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
	bne	.L181
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L181
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