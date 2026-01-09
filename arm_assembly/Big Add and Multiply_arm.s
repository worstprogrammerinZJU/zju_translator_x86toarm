	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	b	.L4
	ldr	x0, [sp, 24]
	bl	strlen
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	x19, x8
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w0, w0, 31
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 63]
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 44]
	neg	w0, w0
	b	.L7
	ldr	w0, [sp, 44]
	str	w0, [sp, 56]
	mov	w1, 10
	ldr	w0, [sp, 56]
	str	w0, [sp, 52]
	ldrb	w1, [sp, 63]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	uxtw	x20, w0
	add	x0, sp, 48
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 48
	mov	x3, x0
	mov	w2, 45
	mov	x1, x20
	mov	x0, x19
	add	x0, sp, 48
	bl	_ZNSaIcED1Ev
	ldrb	w0, [sp, 63]
	mov	x1, x0
	mov	x0, x19
	ldr	w2, [sp, 56]
	ldr	w1, [sp, 52]
	nop
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #48
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 8]
	mul	w0, w0, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 40]
	mul	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	uxtw	x0, w0
	str	x0, [sp, 24]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bcs	.L10
	ldr	w0, [sp, 44]
	b	.L11
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bcs	.L12
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	b	.L11
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcs	.L13
	ldr	w0, [sp, 44]
	add	w0, w0, 2
	b	.L11
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	.L14
	ldr	w0, [sp, 44]
	add	w0, w0, 3
	b	.L11
	ldr	w1, [sp, 12]
	ldr	x0, [sp, 24]
	udiv	x0, x1, x0
	str	w0, [sp, 12]
	ldr	w0, [sp, 44]
	add	w0, w0, 4
	str	w0, [sp, 44]
	b	.L15
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 48
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 48
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x19
	add	x0, sp, 48
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 140]
	ldr	x0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	ldr	x0, [sp, 32]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	b	.L17
	ldr	w0, [sp, 136]
	cmp	w0, 0
	blt	.L18
	ldrsw	x0, [sp, 136]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	b	.L19
	mov	w0, 0
	str	w0, [sp, 128]
	ldr	w0, [sp, 132]
	cmp	w0, 0
	blt	.L20
	ldrsw	x0, [sp, 132]
	mov	x1, x0
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	b	.L21
	mov	w0, 0
	str	w0, [sp, 124]
	ldr	w1, [sp, 128]
	ldr	w0, [sp, 124]
	add	w0, w1, w0
	ldr	w1, [sp, 140]
	add	w0, w1, w0
	str	w0, [sp, 120]
	ldr	w0, [sp, 120]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 140]
	ldr	w1, [sp, 120]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 120]
	add	x0, sp, 88
	mov	x8, x0
	ldr	w0, [sp, 120]
	bl	_ZNSt7__cxx119to_stringEi
	add	x0, sp, 88
	add	x1, sp, 56
	mov	x8, x1
	mov	x1, x19
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	add	x0, sp, 88
	ldr	w0, [sp, 136]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	ldr	w0, [sp, 132]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	w0, [sp, 136]
	cmp	w0, 0
	bge	.L22
	ldr	w0, [sp, 132]
	cmp	w0, 0
	bge	.L22
	ldr	w0, [sp, 140]
	cmp	w0, 0
	bne	.L22
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	add	x0, sp, 56
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 56
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x19
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 204]
	ldr	x0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 200]
	b	.L25
	ldrsw	x0, [sp, 200]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	sub	w1, w0, #48
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	ldr	w1, [sp, 204]
	add	w0, w1, w0
	str	w0, [sp, 196]
	ldr	w0, [sp, 196]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 204]
	ldr	w1, [sp, 196]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 196]
	add	x0, sp, 96
	mov	x8, x0
	ldr	w0, [sp, 196]
	bl	_ZNSt7__cxx119to_stringEi
	add	x0, sp, 96
	add	x1, sp, 64
	mov	x8, x1
	mov	x1, x19
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 64
	add	x0, sp, 96
	ldr	w0, [sp, 200]
	sub	w0, w0, #1
	str	w0, [sp, 200]
	ldr	w0, [sp, 200]
	cmp	w0, 0
	bge	.L26
	b	.L27
	ldr	w2, [sp, 204]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	add	x0, sp, 160
	mov	x8, x0
	mov	w0, w1
	bl	_ZNSt7__cxx119to_stringEi
	add	x0, sp, 160
	add	x1, sp, 128
	mov	x8, x1
	mov	x1, x19
	add	x0, sp, 128
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 128
	add	x0, sp, 160
	ldr	w0, [sp, 204]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 204]
	ldr	w0, [sp, 204]
	cmp	w0, 0
	bgt	.L28
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	ret
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	add	x0, sp, 88
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 152
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 152
	add	x3, sp, 120
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x3
	add	x1, sp, 120
	add	x0, sp, 88
	add	x2, sp, 56
	mov	x8, x2
	add	x0, sp, 120
	add	x0, sp, 152
	bl	_ZNSaIcED1Ev
	add	x0, sp, 88
	add	x1, sp, 24
	mov	x8, x1
	mov	w1, 9999
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 24
	add	x0, sp, 56
	add	x0, sp, 88
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	b	.L35
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [sp, 39]
	add	x1, sp, 39
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L40
	ldr	w1, [sp]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 5
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	lsl	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 5
	str	w0, [sp]
	ldr	w0, [sp, 20]
	add	w3, w0, 1
	ldr	w0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 20]
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	sub	w0, w0, #2
	str	w0, [sp, 28]
	ldr	w0, [sp]
	cmp	w0, 99
	bhi	.L41
	ldr	w0, [sp]
	cmp	w0, 9
	bls	.L42
	ldr	w0, [sp]
	lsl	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	add	w3, w0, 1
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	ldrb	w1, [x1, x0]
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	b	.L44
	ldr	w0, [sp]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L46
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L47
	mov	x0, 1
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L55
	mov	w0, 1
	b	.L56
	mov	w0, 0
	cmp	w0, 0
	beq	.L57
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L58
	add	x0, sp, 56
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 40]
	nop
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L67
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L67
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