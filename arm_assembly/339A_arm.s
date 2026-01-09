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
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 96
	add	x0, x29, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, x29, 96
	sub	x0, x0, #1
	mov	x1, x0
	sub	x1, x1, #1
	str	x1, [x29, 136]
	mov	x26, x0
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x23, x27, 3
	orr	x23, x1, x23
	lsl	x22, x26, 3
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x21, x25, 3
	orr	x21, x1, x21
	lsl	x20, x24, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L10
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L9
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L11
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 128]
	str	wzr, [x29, 156]
	str	wzr, [x29, 152]
	b	.L12
	ldrsw	x1, [x29, 152]
	add	x0, x29, 96
	ldrb	w2, [x0]
	ldr	x1, [x29, 128]
	ldrsw	x0, [x29, 156]
	strb	w2, [x1, x0]
	ldr	w0, [x29, 156]
	add	w0, w0, 1
	str	w0, [x29, 156]
	ldr	w0, [x29, 152]
	add	w0, w0, 2
	str	w0, [x29, 152]
	ldrsw	x19, [x29, 152]
	add	x0, x29, 96
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	ldrsw	x0, [x29, 156]
	ldr	x1, [x29, 128]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 128]
	bl	_ZSt4sortIPcEvT_S1_
	str	wzr, [x29, 148]
	b	.L14
	ldr	w0, [x29, 156]
	sub	w0, w0, #1
	ldr	w1, [x29, 148]
	cmp	w1, w0
	bne	.L15
	ldr	x1, [x29, 128]
	ldrsw	x0, [x29, 148]
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	b	.L16
	ldr	x1, [x29, 128]
	ldrsw	x0, [x29, 148]
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [x29, 148]
	add	w0, w0, 1
	str	w0, [x29, 148]
	ldr	w1, [x29, 148]
	ldr	w0, [x29, 156]
	cmp	w1, w0
	blt	.L17
	mov	w19, 0
	add	x0, x29, 96
	mov	sp, x28
	mov	w0, w19
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 160
	ret
_ZSt4sortIPcEvT_S1_:
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	beq	.L22
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
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
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	b	.L24
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L25
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	b	.L23
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
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	cmp	x0, 16
	bgt	.L27
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	cmp	x0, 16
	ble	.L29
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	mov	w2, w4
	mov	x1, x0
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	mov	w2, w19
	ldr	x1, [sp, 48]
	b	.L31
	mov	w2, w3
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	add	x1, x0, 1
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	mov	w4, w3
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	beq	.L42
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L38
	add	x0, sp, 40
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 72]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	strb	w0, [sp, 71]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	mov	x2, x0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	add	x0, sp, 71
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
	strb	w1, [x0]
	b	.L40
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L41
	b	.L35
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L44
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L45
	nop
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	b	.L47
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L48
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L49
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L51
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 1
	bgt	.L52
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 32
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
	beq	.L56
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L57
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	b	.L62
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L59
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	b	.L62
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	b	.L62
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L60
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	b	.L62
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L61
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	b	.L62
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L64
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L65
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	b	.L66
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L67
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L68
	ldr	x0, [sp, 40]
	b	.L71
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPcS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	b	.L64
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
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPcET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPcET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 16]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	b	.L77
	ldr	x0, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	add	x1, sp, 39
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L78
	add	x0, sp, 39
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	cmp	x0, 1
	ble	.L84
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 79]
	add	x0, sp, 79
	ldrb	w0, [x0]
	mov	w4, w19
	mov	w3, w0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L85
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L83
	nop
	b	.L79
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	strb	w0, [sp, 79]
	ldr	x0, [sp, 56]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x19, x1, x0
	add	x0, sp, 79
	ldrb	w0, [x0]
	mov	w4, w20
	mov	w3, w0
	mov	x2, x19
	mov	x1, 0
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	bl	_ZSt12__niter_baseIPcET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPcET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPcET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	mov	x1, x0
	add	x0, sp, 40
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 39]
	strb	w4, [sp, 32]
	ldr	x0, [sp, 48]
	str	x0, [sp, 80]
	ldr	x0, [sp, 48]
	str	x0, [sp, 88]
	b	.L95
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 56]
	add	x3, x1, x0
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x3
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L96
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x2]
	strb	w1, [x0]
	ldr	x0, [sp, 88]
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 88]
	cmp	x0, x1
	blt	.L97
	ldr	x0, [sp, 40]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L98
	ldr	x0, [sp, 40]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 88]
	cmp	x0, x1
	bne	.L98
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x2]
	strb	w1, [x0]
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	add	x0, sp, 32
	add	x0, sp, 72
	mov	w1, w19
	add	x0, sp, 39
	ldrb	w1, [x0]
	add	x0, sp, 72
	mov	x4, x0
	mov	w3, w1
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 39]
	str	x4, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	b	.L109
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x2]
	strb	w1, [x0]
	ldr	x0, [sp, 72]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L110
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	add	x1, sp, 39
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L110
	mov	w0, 1
	b	.L111
	mov	w0, 0
	cmp	w0, 0
	bne	.L112
	add	x0, sp, 39
	mov	x2, x0
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x2]
	strb	w1, [x0]
	nop
	ldp	x29, x30, [sp], 80
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
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L118
	ldr	x0, [sp, 56]
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	mov	x2, x1
	ldr	x1, [sp, 40]
	bl	memmove
	ldr	x0, [sp, 56]
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
	bne	.L122
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L122
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