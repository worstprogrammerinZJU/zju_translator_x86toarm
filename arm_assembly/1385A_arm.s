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
_ZL3INF:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L4
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	add	x0, x0, 4
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32
	add	x0, x0, 12
	add	x3, sp, 32
	mov	w2, w19
	mov	x1, x0
	mov	x0, x3
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 40]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 40]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L4
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	mov	w0, w3
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L13
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	bl	_ZSt4__lgl
	lsl	x0, x0, 1
	ldrb	w3, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldrb	w2, [sp, 24]
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
	strb	w1, [sp, 16]
	add	x0, sp, 16
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L18
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L19
	ldrb	w3, [sp, 16]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	b	.L17
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	ldrb	w2, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldrb	w3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 64
	bgt	.L21
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 64
	ble	.L23
	ldr	x0, [sp, 40]
	add	x0, x0, 64
	ldrb	w2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 64
	ldrb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	b	.L25
	ldrb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldrb	w3, [sp, 16]
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x1, x0, 4
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	ldrb	w4, [sp, 24]
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	ldrb	w3, [sp, 24]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	beq	.L36
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	str	x0, [sp, 72]
	b	.L32
	add	x0, sp, 40
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 72]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L33
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	mov	x2, x0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	add	x0, sp, 68
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	str	w1, [x0]
	b	.L34
	ldrb	w0, [sp, 40]
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L35
	b	.L29
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L38
	ldrb	w0, [sp, 40]
	mov	w1, w19
	ldr	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L39
	nop
	nop
	ldr	x19, [sp, 16]
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
	b	.L41
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L43
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L45
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 4
	bgt	.L46
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
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
	beq	.L50
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	b	.L56
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L53
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	b	.L56
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	b	.L56
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L54
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	b	.L56
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	b	.L56
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L58
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L59
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	b	.L60
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L61
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L62
	ldr	x0, [sp, 40]
	b	.L65
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	b	.L58
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
	bl	_ZSt12__miter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPiET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	sub	x0, x0, #4
	str	x0, [sp, 40]
	b	.L73
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x0, #4
	str	x0, [sp, 40]
	add	x1, sp, 36
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L74
	add	x0, sp, 36
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 4
	ble	.L80
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 60]
	add	x0, sp, 60
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w4, [x0]
	mov	w3, w1
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 72]
	cmp	x0, 0
	beq	.L81
	ldr	x0, [sp, 72]
	sub	x0, x0, #1
	str	x0, [sp, 72]
	b	.L79
	nop
	b	.L75
	nop
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	str	w0, [sp, 76]
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x19, x0
	add	x0, sp, 76
	ldr	w1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w4, [x0]
	mov	w3, w1
	mov	x2, x19
	mov	x1, 0
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiET_S1_
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	w3, [sp, 20]
	strb	w4, [sp, 16]
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	str	x0, [sp, 72]
	b	.L96
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x3, x1, x0
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	add	x0, sp, 16
	mov	x2, x1
	mov	x1, x3
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L97
	ldr	x0, [sp, 72]
	sub	x0, x0, #1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	blt	.L98
	ldr	x0, [sp, 24]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L99
	ldr	x0, [sp, 24]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bne	.L99
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	add	x0, sp, 16
	mov	x1, x0
	add	x0, sp, 56
	add	x0, sp, 20
	ldr	w0, [x0]
	add	x1, sp, 56
	mov	x4, x1
	mov	w3, w0
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 80
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
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	w3, [sp, 36]
	str	x4, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	b	.L109
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
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
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	add	x1, sp, 36
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
	add	x0, sp, 36
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNKSt7greaterIiEclERKiS2_
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
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L118
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x3
	bl	memmove
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
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