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
main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 172]
	b	.L6
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	str	w0, [sp, 168]
	str	wzr, [sp, 164]
	b	.L7
	ldrsw	x1, [sp, 164]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	beq	.L8
	ldrsw	x1, [sp, 164]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 115
	bne	.L9
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 101
	beq	.L8
	ldrsw	x1, [sp, 164]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 89
	bne	.L10
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 115
	beq	.L8
	ldrsw	x1, [sp, 164]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 101
	bne	.L11
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 89
	bne	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	cmp	w0, 0
	beq	.L13
	str	wzr, [sp, 168]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L14
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
	ldrsw	x19, [sp, 164]
	add	x0, sp, 40
	sub	x0, x0, #1
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	add	x2, sp, 40
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	str	wzr, [sp, 168]
	ldr	w0, [sp, 168]
	cmp	w0, 0
	beq	.L17
	str	wzr, [sp, 160]
	b	.L18
	ldrsw	x1, [sp, 160]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 101
	beq	.L19
	ldrsw	x1, [sp, 160]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 89
	beq	.L19
	ldrsw	x1, [sp, 160]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 115
	beq	.L19
	mov	w0, 1
	b	.L20
	mov	w0, 0
	cmp	w0, 0
	beq	.L21
	str	wzr, [sp, 168]
	ldr	w0, [sp, 160]
	add	w0, w0, 1
	str	w0, [sp, 160]
	ldrsw	x19, [sp, 160]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	ldr	w0, [sp, 168]
	cmp	w0, 0
	bne	.L23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w19, 0
	b	.L24
	add	x2, sp, 40
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	add	x2, sp, 40
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	add	x2, sp, 40
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L26
	mov	w0, 1
	b	.L27
	mov	w0, 0
	cmp	w0, 0
	beq	.L28
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	str	w0, [sp, 168]
	b	.L17
	add	x2, sp, 40
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L29
	add	x2, sp, 40
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L30
	mov	w0, 1
	b	.L31
	mov	w0, 0
	cmp	w0, 0
	beq	.L32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	str	w0, [sp, 168]
	b	.L17
	add	x0, sp, 112
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 112
	add	x3, sp, 72
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x3
	add	x0, sp, 112
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 156]
	b	.L33
	ldrsw	x1, [sp, 156]
	add	x0, sp, 40
	ldrb	w0, [x0]
	strb	w0, [sp, 155]
	add	x2, sp, 72
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	add	x2, sp, 72
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	add	x2, sp, 72
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L34
	mov	w0, 1
	b	.L35
	mov	w0, 0
	cmp	w0, 0
	beq	.L36
	add	x0, sp, 72
	add	x1, sp, 120
	mov	x8, x1
	ldrb	w1, [sp, 155]
	add	x1, sp, 120
	add	x0, sp, 72
	add	x0, sp, 120
	b	.L37
	add	x2, sp, 72
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	add	x2, sp, 72
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	add	x2, sp, 72
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	mov	w0, 1
	b	.L39
	mov	w0, 0
	cmp	w0, 0
	beq	.L37
	mov	w0, 1
	str	w0, [sp, 168]
	add	x2, sp, 72
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldrsw	x19, [sp, 156]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L40
	ldr	w0, [sp, 168]
	cmp	w0, 1
	bne	.L41
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 72
	mov	w19, 1
	add	x0, sp, 40
	cmp	w19, 1
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 108]
	ldr	w1, [sp, 172]
	cmp	w1, w0
	ble	.L44
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 176
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
	b	.L49
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
	bne	.L50
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
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
	beq	.L53
	ldr	x0, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L54
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldrb	w2, [sp, 39]
	mov	x1, 1
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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
	beq	.L64
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	beq	.L64
	mov	w0, 1
	b	.L65
	mov	w0, 0
	cmp	w0, 0
	beq	.L66
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 15
	bls	.L67
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
	bne	.L76
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L76
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