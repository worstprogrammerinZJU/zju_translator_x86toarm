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
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	add	x0, x29, 176
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	b	.L9
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 168
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [x29, 168]
	sub	x1, x0, #1
	str	x1, [x29, 208]
	mov	x1, x0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 58
	mov	x4, x3
	lsl	x21, x4, 6
	orr	x21, x1, x21
	mov	x1, x2
	lsl	x20, x1, 6
	mov	x1, x0
	str	x1, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x1, x2
	lsr	x1, x1, 58
	mov	x4, x3
	lsl	x23, x4, 6
	orr	x23, x1, x23
	mov	x1, x2
	lsl	x22, x1, 6
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L11
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L10
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L12
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 200]
	ldr	x0, [x29, 168]
	sub	x1, x0, #1
	str	x1, [x29, 192]
	mov	x1, x0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 58
	mov	x4, x3
	lsl	x25, x4, 6
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 6
	mov	x1, x0
	str	x1, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x2, x3, [x29, 96]
	mov	x1, x2
	lsr	x1, x1, 58
	mov	x4, x3
	lsl	x27, x4, 6
	orr	x27, x1, x27
	mov	x1, x2
	lsl	x26, x1, 6
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L14
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L13
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L15
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 184]
	str	xzr, [x29, 232]
	b	.L16
	ldr	x0, [x29, 232]
	lsl	x0, x0, 3
	ldr	x1, [x29, 200]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [x29, 232]
	add	x0, x0, 1
	str	x0, [x29, 232]
	ldr	x0, [x29, 168]
	ldr	x1, [x29, 232]
	cmp	x1, x0
	blt	.L17
	str	xzr, [x29, 224]
	b	.L18
	ldr	x0, [x29, 200]
	ldr	x1, [x29, 224]
	ldr	x2, [x0, x1, lsl 3]
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 224]
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [x29, 224]
	add	x0, x0, 1
	str	x0, [x29, 224]
	ldr	x0, [x29, 168]
	ldr	x1, [x29, 224]
	cmp	x1, x0
	blt	.L19
	ldr	x0, [x29, 168]
	lsl	x0, x0, 3
	ldr	x1, [x29, 200]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 200]
	bl	_ZSt4sortIPxEvT_S1_
	str	xzr, [x29, 216]
	b	.L20
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 216]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 168]
	sub	x2, x0, #1
	ldr	x0, [x29, 200]
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	bne	.L21
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 216]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 168]
	sub	x2, x0, #2
	ldr	x0, [x29, 200]
	ldr	x0, [x0, x2, lsl 3]
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L22
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 216]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 168]
	sub	x2, x0, #1
	ldr	x0, [x29, 200]
	ldr	x0, [x0, x2, lsl 3]
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x0, [x29, 216]
	add	x0, x0, 1
	str	x0, [x29, 216]
	ldr	x0, [x29, 168]
	ldr	x1, [x29, 216]
	cmp	x1, x0
	blt	.L23
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x19
	ldr	x0, [x29, 176]
	sub	x1, x0, #1
	str	x1, [x29, 176]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 240
	ret
_ZSt4sortIPxEvT_S1_:
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
	beq	.L29
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
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
	b	.L31
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L32
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	b	.L30
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
	cmp	x0, 128
	bgt	.L34
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
	cmp	x0, 128
	ble	.L36
	ldr	x0, [sp, 56]
	add	x0, x0, 128
	mov	w2, w4
	mov	x1, x0
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 128
	mov	w2, w19
	ldr	x1, [sp, 48]
	b	.L38
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
	asr	x0, x0, 3
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	add	x1, x0, 8
	ldr	x0, [sp, 48]
	sub	x0, x0, #8
	mov	w4, w3
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
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
	beq	.L49
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 72]
	b	.L45
	add	x0, sp, 40
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 72]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L46
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	add	x0, sp, 64
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	str	x1, [x0]
	b	.L47
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L48
	b	.L42
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
	b	.L51
	mov	w0, w20
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L52
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
	b	.L54
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L56
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L58
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 8
	bgt	.L59
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
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
	beq	.L63
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L64
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L69
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L66
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L69
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L69
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L67
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L69
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L68
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L69
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L71
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L72
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
	b	.L73
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L74
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L75
	ldr	x0, [sp, 40]
	b	.L78
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	str	x0, [sp, 40]
	b	.L71
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
	bl	_ZSt12__miter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPxET_S1_
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
	ldr	x0, [x0]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	sub	x0, x0, #8
	str	x0, [sp, 40]
	b	.L84
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x0, #8
	str	x0, [sp, 40]
	add	x1, sp, 32
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L85
	add	x0, sp, 32
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
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
	cmp	x0, 8
	ble	.L91
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 72]
	add	x0, sp, 72
	ldr	x0, [x0]
	mov	w4, w19
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L92
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L90
	nop
	b	.L86
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
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
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
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPxET_S1_
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
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 96]
	ldr	x0, [sp, 64]
	str	x0, [sp, 104]
	b	.L102
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x3, x1, x0
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x3
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L103
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	ldr	x0, [sp, 104]
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	cmp	x0, x1
	blt	.L104
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L105
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	cmp	x0, x1
	bne	.L105
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 64]
	add	x0, sp, 40
	add	x0, sp, 88
	mov	w1, w19
	add	x0, sp, 48
	ldr	x0, [x0]
	add	x1, sp, 88
	mov	x4, x1
	mov	x3, x0
	ldr	x2, [sp, 96]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	b	.L116
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
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
	ble	.L117
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	add	x1, sp, 32
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L117
	mov	w0, 1
	b	.L118
	mov	w0, 0
	cmp	w0, 0
	bne	.L119
	add	x0, sp, 32
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
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
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
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
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L125
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
	bne	.L129
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L129
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