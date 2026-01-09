main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	bl	islower
	cmp	w0, 0
	beq	.L3
	add	x0, sp, 32
	str	x0, [sp, 64]
	add	x0, sp, 64
	mov	x1, 1
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:isupper
	ldr	x2, [x0, #:got_lo12:isupper]
	mov	x0, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	mov	w0, 1
	b	.L4
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	str	wzr, [sp, 76]
	b	.L6
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	islower
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	toupper
	and	w19, w0, 255
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	b	.L8
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	tolower
	and	w19, w0, 255
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	b	.L10
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:isupper
	ldr	x2, [x0, #:got_lo12:isupper]
	mov	x0, x19
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	str	wzr, [sp, 72]
	b	.L11
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	islower
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	toupper
	and	w19, w0, 255
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	b	.L13
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	tolower
	and	w19, w0, 255
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldrsw	x19, [sp, 72]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	add	x0, sp, 32
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	add	x1, sp, 56
	add	x0, sp, 32
	and	w0, w0, 255
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
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
	cset	w0, eq
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	ldr	x1, [x0]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x19, x0
	add	x0, sp, 56
	mov	w3, w20
	mov	x2, x19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 16
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	ldr	x1, [x0]
	add	x0, sp, 40
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x1, sp, 40
	add	x0, sp, 32
	asr	x0, x0, 2
	str	x0, [sp, 56]
	b	.L39
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L40
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L43
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bgt	.L45
	add	x1, sp, 40
	add	x0, sp, 32
	cmp	x0, 3
	beq	.L46
	cmp	x0, 3
	bgt	.L47
	cmp	x0, 1
	beq	.L48
	cmp	x0, 2
	beq	.L49
	b	.L47
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L50
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L52
	ldr	x0, [sp, 40]
	b	.L41
	add	x0, sp, 40
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 16
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
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
	sub	x0, x19, x0
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
	add	x0, sp, 32
	ldrb	w0, [x0]
	blr	x19
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
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
	bne	.L64
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L64
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