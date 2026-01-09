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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 511
	bhi	.L9
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L11
	mov	x0, 1
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
	bge	.L13
	ldr	x0, [sp]
	b	.L14
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
_ZL3INF:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEEC1Ev
	str	wzr, [sp, 236]
	b	.L17
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	add	x1, sp, 40
	add	x0, sp, 48
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 236]
	cmp	w1, w0
	blt	.L18
	add	x0, sp, 48
	add	x1, sp, 136
	mov	x8, x1
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 48
	add	x1, sp, 168
	mov	x8, x1
	bl	_ZNSt5dequeIxSaIxEE3endEv
	add	x1, sp, 168
	add	x0, sp, 136
	mov	w2, w19
	str	xzr, [sp, 224]
	str	xzr, [sp, 216]
	strb	wzr, [sp, 215]
	str	wzr, [sp, 208]
	b	.L19
	ldrb	w0, [sp, 215]
	eor	w0, w0, 1
	strb	w0, [sp, 215]
	ldrb	w0, [sp, 215]
	cmp	w0, 0
	beq	.L20
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE5frontEv
	ldr	x0, [x0]
	ldr	x1, [sp, 224]
	add	x0, x1, x0
	str	x0, [sp, 224]
	add	x0, sp, 48
	b	.L21
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE4backEv
	ldr	x0, [x0]
	ldr	x1, [sp, 216]
	add	x0, x1, x0
	str	x0, [sp, 216]
	add	x0, sp, 48
	ldr	w0, [sp, 208]
	add	w0, w0, 1
	str	w0, [sp, 208]
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 208]
	cmp	w1, w0
	blt	.L22
	ldr	x0, [sp, 224]
	mul	x1, x0, x0
	ldr	x0, [sp, 216]
	mul	x0, x0, x0
	add	x0, x1, x0
	str	x0, [sp, 200]
	ldr	x1, [sp, 200]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEED1Ev
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 240
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L25
	ldr	x0, [sp]
	b	.L26
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
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
	beq	.L30
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
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE3endEv
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
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x0, x0, #8
	cmp	x1, x0
	beq	.L33
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	b	.L35
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	mov	w0, w20
	add	x1, sp, 96
	add	x0, sp, 64
	mov	w2, w19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 32
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x0, #8
	cmp	x1, x0
	beq	.L44
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L46
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
	bl	_ZNSt5dequeIxSaIxEE3endEv
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
	beq	.L50
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	sub	x1, x0, #8
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	b	.L52
	ldr	x0, [sp, 24]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxEC2Ev
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	x0, 8
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
	mov	x0, 8
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	lsl	x0, x0, 3
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
	b	.L57
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
	bcc	.L58
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
	bl	_ZNSaIPxED1Ev
	ldp	x29, x30, [sp], 64
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
	beq	.L65
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	mov	x1, 1
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x19, x0, 8
	mov	x0, x1
	str	x0, [x19]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	nop
	ldp	x19, x20, [sp, 16]
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
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L71
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4__lgl
	lsl	x2, x0, 1
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w3, [sp, 24]
	add	x0, sp, 112
	ldr	x1, [sp, 40]
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	add	x1, sp, 144
	add	x0, sp, 112
	ldrb	w2, [sp, 24]
	nop
	ldp	x29, x30, [sp], 176
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
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 24]
	add	x2, x0, 16
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bne	.L77
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
	sub	x1, x0, #8
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
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
	sub	x1, x0, #8
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
_ZNSaIxEC2Ev:
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
	bl	_ZNSaIPxED1Ev
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
	b	.L86
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
	bcc	.L87
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
	lsl	x0, x0, 3
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
	mov	x0, 8
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
	bl	_ZNSaIPxEC1IxEERKSaIT_E
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
_ZNSaIPxED2Ev:
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
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	x19, [x0]
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
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 24]
	ldr	x3, [x2, 72]
	ldr	x2, [sp, 24]
	ldr	x2, [x2]
	sub	x2, x3, x2
	asr	x2, x2, 3
	sub	x0, x0, x2
	cmp	x1, x0
	bls	.L103
	mov	w2, 0
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
	mov	x0, 8
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	strb	w1, [sp, 16]
	add	x0, sp, 16
	nop
	ldp	x29, x30, [sp], 32
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
	asr	x1, x1, 3
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	ldr	x2, [x1, 16]
	ldr	x1, [sp, 16]
	ldr	x1, [x1]
	sub	x1, x2, x1
	asr	x1, x1, 3
	add	x0, x0, x1
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L114
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L115
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	add	x2, sp, 144
	add	x1, sp, 112
	add	x0, sp, 80
	ldrb	w3, [sp, 16]
	b	.L113
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	add	x0, sp, 208
	ldr	x1, [sp, 32]
	add	x1, sp, 208
	add	x0, sp, 176
	add	x2, sp, 48
	mov	x8, x2
	ldrb	w2, [sp, 16]
	add	x1, sp, 48
	add	x0, sp, 240
	add	x0, sp, 272
	ldr	x1, [sp, 32]
	add	x1, sp, 272
	add	x0, sp, 240
	ldrb	w3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 32]
	mov	x1, x0
	add	x0, sp, 48
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L117
	ldp	x29, x30, [sp], 304
	ret
	stp	x29, x30, [sp, -240]!
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
	beq	.L119
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 80
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w2, [sp, 24]
	add	x0, sp, 112
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	add	x1, sp, 144
	add	x0, sp, 112
	ldrb	w2, [sp, 24]
	b	.L121
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	add	x0, sp, 208
	ldr	x1, [sp, 32]
	add	x1, sp, 208
	add	x0, sp, 176
	ldrb	w2, [sp, 24]
	nop
	ldp	x29, x30, [sp], 240
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
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
	mov	x0, 8
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
	bls	.L139
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
	beq	.L140
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L141
	mov	x0, 0
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L142
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	b	.L143
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
	b	.L143
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
	beq	.L144
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L145
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
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	add	x0, sp, 112
	ldr	x1, [sp, 24]
	add	x2, sp, 112
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w3, [sp, 16]
	add	x0, sp, 144
	ldr	x1, [sp, 40]
	add	x0, sp, 176
	ldr	x1, [sp, 32]
	add	x2, sp, 16
	add	x1, sp, 176
	add	x0, sp, 144
	nop
	ldp	x29, x30, [sp], 208
	ret
	stp	x29, x30, [sp, -320]!
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
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 128
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	add	x1, sp, 64
	add	x0, sp, 160
	add	x0, sp, 192
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 48]
	add	x3, sp, 192
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 96
	ldrb	w4, [sp, 40]
	add	x0, sp, 224
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	add	x0, sp, 256
	ldr	x1, [sp, 48]
	add	x0, sp, 288
	ldr	x1, [sp, 56]
	add	x2, sp, 288
	add	x1, sp, 256
	add	x0, sp, 224
	mov	x8, x19
	ldrb	w3, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 320
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
	stp	x29, x30, [sp, -336]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L162
	add	x0, sp, 72
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	b	.L158
	add	x1, sp, 72
	add	x0, sp, 112
	add	x0, sp, 144
	ldr	x1, [sp, 56]
	add	x2, sp, 144
	add	x1, sp, 112
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L159
	add	x0, sp, 72
	ldr	x0, [x0]
	str	x0, [sp, 104]
	add	x0, sp, 208
	ldr	x1, [sp, 56]
	add	x1, sp, 72
	add	x0, sp, 240
	add	x0, sp, 72
	add	x1, sp, 272
	mov	x8, x1
	mov	x1, 1
	add	x2, sp, 272
	add	x1, sp, 240
	add	x0, sp, 208
	add	x3, sp, 176
	mov	x8, x3
	add	x0, sp, 104
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	str	x19, [x0]
	b	.L160
	add	x1, sp, 72
	add	x0, sp, 304
	ldrb	w0, [sp, 40]
	add	x0, sp, 304
	mov	w1, w20
	add	x0, sp, 72
	add	x0, sp, 72
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L161
	b	.L155
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 336
	ret
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	b	.L164
	add	x1, sp, 64
	add	x0, sp, 96
	ldrb	w0, [sp, 40]
	add	x0, sp, 96
	mov	w1, w19
	add	x0, sp, 64
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L165
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	beq	.L169
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L170
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
	lsl	x0, x0, 3
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
	beq	.L184
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L185
	bl	_ZSt17__throw_bad_allocv
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	add	x2, sp, 16
	add	x1, sp, 112
	add	x0, sp, 80
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	b	.L188
	add	x1, sp, 48
	add	x0, sp, 144
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	add	x2, sp, 176
	add	x1, sp, 144
	add	x0, sp, 16
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L189
	add	x0, sp, 208
	ldr	x1, [sp, 40]
	add	x0, sp, 240
	ldr	x1, [sp, 32]
	add	x1, sp, 48
	add	x0, sp, 272
	add	x3, sp, 16
	add	x2, sp, 272
	add	x1, sp, 240
	add	x0, sp, 208
	add	x0, sp, 48
	add	x0, sp, 48
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L190
	nop
	nop
	ldp	x29, x30, [sp], 304
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L192
	ldr	x0, [sp, 32]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	add	x2, sp, 112
	add	x1, sp, 80
	add	x0, sp, 48
	ldr	x3, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L193
	nop
	nop
	ldp	x29, x30, [sp], 144
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
	sub	sp, sp, #768
	stp	x29, x30, [sp]
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	add	x2, sp, 96
	add	x1, sp, 64
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L197
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	add	x0, sp, 160
	ldr	x1, [sp, 32]
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L198
	add	x0, sp, 192
	ldr	x1, [sp, 56]
	add	x0, sp, 224
	ldr	x1, [sp, 40]
	add	x1, sp, 224
	add	x0, sp, 192
	b	.L203
	add	x0, sp, 256
	ldr	x1, [sp, 48]
	add	x0, sp, 288
	ldr	x1, [sp, 32]
	add	x2, sp, 288
	add	x1, sp, 256
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L200
	add	x0, sp, 320
	ldr	x1, [sp, 56]
	add	x0, sp, 352
	ldr	x1, [sp, 32]
	add	x1, sp, 352
	add	x0, sp, 320
	b	.L203
	add	x0, sp, 384
	ldr	x1, [sp, 56]
	add	x0, sp, 416
	ldr	x1, [sp, 48]
	add	x1, sp, 416
	add	x0, sp, 384
	b	.L203
	add	x0, sp, 448
	ldr	x1, [sp, 48]
	add	x0, sp, 480
	ldr	x1, [sp, 32]
	add	x2, sp, 480
	add	x1, sp, 448
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L201
	add	x0, sp, 512
	ldr	x1, [sp, 56]
	add	x0, sp, 544
	ldr	x1, [sp, 48]
	add	x1, sp, 544
	add	x0, sp, 512
	b	.L203
	add	x0, sp, 576
	ldr	x1, [sp, 40]
	add	x0, sp, 608
	ldr	x1, [sp, 32]
	add	x2, sp, 608
	add	x1, sp, 576
	add	x0, sp, 24
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L202
	add	x0, sp, 640
	ldr	x1, [sp, 56]
	add	x0, sp, 672
	ldr	x1, [sp, 32]
	add	x1, sp, 672
	add	x0, sp, 640
	b	.L203
	add	x0, sp, 704
	ldr	x1, [sp, 56]
	add	x0, sp, 736
	ldr	x1, [sp, 40]
	add	x1, sp, 736
	add	x0, sp, 704
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 768
	ret
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	b	.L205
	ldr	x0, [sp, 56]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	add	x2, sp, 96
	add	x1, sp, 64
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L206
	ldr	x0, [sp, 48]
	b	.L207
	ldr	x0, [sp, 48]
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L208
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L209
	ldr	x1, [sp, 56]
	mov	x0, x19
	b	.L212
	add	x0, sp, 192
	ldr	x1, [sp, 56]
	add	x0, sp, 224
	ldr	x1, [sp, 48]
	add	x1, sp, 224
	add	x0, sp, 192
	ldr	x0, [sp, 56]
	b	.L205
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 256
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
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	blt	.L214
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bge	.L214
	mov	w0, 1
	b	.L215
	mov	w0, 0
	cmp	w0, 0
	beq	.L216
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	b	.L217
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L218
	mov	x1, x0
	ldr	x0, [sp, 56]
	sdiv	x0, x0, x1
	b	.L219
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
	lsl	x0, x0, 3
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	bne	.L222
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	add	x0, sp, 96
	add	x1, sp, 64
	mov	x8, x1
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	add	x0, sp, 160
	add	x1, sp, 128
	mov	x8, x1
	add	x0, sp, 192
	ldr	x1, [sp, 40]
	add	x2, sp, 192
	add	x1, sp, 128
	add	x0, sp, 64
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 88]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	b	.L233
	add	x0, sp, 56
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 56
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	add	x0, sp, 56
	add	x1, sp, 56
	add	x0, sp, 96
	add	x2, sp, 96
	add	x1, sp, 88
	add	x0, sp, 32
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L234
	add	x0, sp, 88
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
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
	stp	x29, x30, [sp, -144]!
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
	bne	.L248
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 136]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x1, [sp, 136]
	ldr	x0, [sp, 40]
	add	x0, sp, 64
	ldr	x0, [x0]
	str	x0, [sp, 56]
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	add	x5, sp, 96
	ldrb	w4, [x0]
	mov	x3, x1
	ldr	x2, [sp, 128]
	ldr	x1, [sp, 136]
	mov	x0, x5
	ldr	x0, [sp, 136]
	cmp	x0, 0
	beq	.L249
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	b	.L247
	nop
	b	.L243
	nop
	ldp	x29, x30, [sp], 144
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 24]
	ldr	x0, [sp]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	bne	.L251
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	b	.L252
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 24]
	ldr	x0, [sp]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	str	x19, [x0]
	add	x0, sp, 80
	ldr	x1, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mov	x19, x0
	add	x0, sp, 72
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	add	x5, sp, 80
	ldrb	w4, [x0]
	mov	x3, x1
	mov	x2, x19
	mov	x1, 0
	mov	x0, x5
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	neg	x0, x0
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
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
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	add	sp, sp, 32
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
	stp	x29, x30, [sp, -288]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 128
	ldr	x1, [sp, 56]
	add	x0, sp, 128
	add	x1, sp, 96
	mov	x8, x1
	add	x0, sp, 192
	ldr	x1, [sp, 48]
	add	x0, sp, 192
	add	x1, sp, 160
	mov	x8, x1
	add	x0, sp, 256
	ldr	x1, [sp, 40]
	add	x0, sp, 256
	add	x1, sp, 224
	mov	x8, x1
	add	x2, sp, 224
	add	x1, sp, 160
	add	x0, sp, 96
	add	x3, sp, 64
	mov	x8, x3
	add	x0, sp, 64
	mov	x8, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 288
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	stp	x29, x30, [sp, -336]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 320]
	ldr	x0, [sp, 64]
	str	x0, [sp, 328]
	b	.L278
	ldr	x0, [sp, 328]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 328]
	add	x0, sp, 96
	mov	x8, x0
	ldr	x1, [sp, 328]
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	add	x1, sp, 128
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x2, sp, 128
	add	x1, sp, 96
	add	x0, sp, 40
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L279
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	str	x0, [sp, 328]
	add	x0, sp, 160
	mov	x8, x0
	ldr	x1, [sp, 328]
	ldr	x0, [sp, 72]
	add	x0, sp, 160
	ldr	x19, [x0]
	add	x0, sp, 192
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 192
	str	x19, [x0]
	ldr	x0, [sp, 328]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 328]
	cmp	x0, x1
	blt	.L280
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L281
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 328]
	cmp	x0, x1
	bne	.L281
	ldr	x0, [sp, 328]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 328]
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	add	x1, sp, 224
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, sp, 224
	ldr	x19, [x0]
	add	x0, sp, 256
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 256
	str	x19, [x0]
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	add	x0, sp, 40
	mov	x1, x0
	add	x0, sp, 88
	add	x0, sp, 288
	ldr	x1, [sp, 72]
	add	x0, sp, 48
	ldr	x1, [x0]
	add	x2, sp, 88
	add	x0, sp, 288
	mov	x4, x2
	mov	x3, x1
	ldr	x2, [sp, 320]
	ldr	x1, [sp, 64]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 336
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
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	add	x2, sp, 128
	add	x1, sp, 96
	add	x0, sp, 64
	mov	x8, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 32]
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -224]!
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
	str	x0, [sp, 216]
	b	.L295
	add	x0, sp, 88
	mov	x8, x0
	ldr	x1, [sp, 216]
	ldr	x0, [sp, 72]
	add	x0, sp, 88
	ldr	x19, [x0]
	add	x0, sp, 120
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 120
	str	x19, [x0]
	ldr	x0, [sp, 216]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 216]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L296
	add	x0, sp, 152
	mov	x8, x0
	ldr	x1, [sp, 216]
	ldr	x0, [sp, 72]
	add	x1, sp, 48
	add	x0, sp, 152
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L296
	mov	w0, 1
	b	.L297
	mov	w0, 0
	cmp	w0, 0
	bne	.L298
	add	x0, sp, 48
	ldr	x19, [x0]
	add	x0, sp, 184
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, sp, 184
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -288]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	mov	x19, x8
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	beq	.L300
	ldr	x0, [sp, 64]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x21, [x0]
	add	x0, sp, 120
	ldr	x1, [sp, 56]
	add	x0, sp, 120
	add	x1, sp, 88
	mov	x8, x1
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	ldr	x0, [sp, 56]
	mov	x1, x0
	add	x0, sp, 88
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	str	x0, [sp, 280]
	b	.L301
	ldr	x0, [sp, 280]
	ldr	x21, [x0]
	ldr	x0, [sp, 280]
	ldr	x20, [x0]
	lsl	x0, x0, 3
	add	x20, x20, x0
	add	x0, sp, 184
	ldr	x1, [sp, 56]
	add	x0, sp, 184
	add	x1, sp, 152
	mov	x8, x1
	mov	x2, x0
	mov	x1, x20
	mov	x0, x21
	ldr	x0, [sp, 56]
	mov	x1, x0
	add	x0, sp, 152
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [sp, 280]
	sub	x0, x0, #8
	str	x0, [sp, 280]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 280]
	cmp	x1, x0
	bne	.L302
	ldr	x0, [sp, 72]
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	ldr	x21, [x0, 16]
	add	x0, sp, 216
	ldr	x1, [sp, 56]
	add	x0, sp, 216
	mov	x8, x19
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	b	.L299
	ldr	x0, [sp, 72]
	ldr	x20, [x0]
	ldr	x0, [sp, 64]
	ldr	x21, [x0]
	add	x0, sp, 248
	ldr	x1, [sp, 56]
	add	x0, sp, 248
	mov	x8, x19
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 288
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
	beq	.L305
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
	beq	.L308
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 72]
	b	.L313
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L314
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	ldr	x1, [x0]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [sp, 88]
	add	x1, sp, 64
	add	x0, sp, 72
	bl	_ZSt3minIlERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x2, [sp, 88]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	sub	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L315
	ldr	x1, [sp, 40]
	mov	x0, x19
	mov	x0, x19
	ldr	x19, [sp, 16]
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
	beq	.L322
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
	bne	.L326
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L326
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