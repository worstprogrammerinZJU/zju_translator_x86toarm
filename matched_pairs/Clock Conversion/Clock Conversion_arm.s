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
main:
	stp	x29, x30, [sp, -336]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 164
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L17
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	sub	w1, w0, #48
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w19, w0
	add	x0, sp, 32
	mov	x1, 1
	ldrb	w0, [x0]
	sub	w0, w0, #48
	add	w0, w19, w0
	str	w0, [sp, 332]
	add	x0, sp, 32
	mov	x1, 3
	ldrb	w0, [x0]
	sub	w1, w0, #48
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w19, w0
	add	x0, sp, 32
	mov	x1, 4
	ldrb	w0, [x0]
	sub	w0, w0, #48
	add	w0, w19, w0
	str	w0, [sp, 328]
	add	x0, sp, 64
	ldr	w0, [sp, 332]
	cmp	w0, 11
	bgt	.L18
	add	x2, sp, 64
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L19
	add	x2, sp, 64
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 332]
	cmp	w0, 0
	bne	.L20
	mov	w0, 12
	str	w0, [sp, 332]
	b	.L21
	ldr	w0, [sp, 332]
	cmp	w0, 12
	ble	.L21
	ldr	w0, [sp, 332]
	sub	w0, w0, #12
	str	w0, [sp, 332]
	add	x0, sp, 96
	ldr	w0, [sp, 332]
	cmp	w0, 9
	bgt	.L22
	add	x2, sp, 96
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	add	x0, sp, 168
	mov	x8, x0
	ldr	w0, [sp, 332]
	bl	_ZNSt7__cxx119to_stringEi
	add	x1, sp, 168
	add	x0, sp, 96
	add	x0, sp, 168
	b	.L23
	add	x0, sp, 200
	mov	x8, x0
	ldr	w0, [sp, 332]
	bl	_ZNSt7__cxx119to_stringEi
	add	x1, sp, 200
	add	x0, sp, 96
	add	x0, sp, 200
	add	x0, sp, 128
	ldr	w0, [sp, 328]
	cmp	w0, 9
	bgt	.L24
	add	x2, sp, 128
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	add	x0, sp, 232
	mov	x8, x0
	ldr	w0, [sp, 328]
	bl	_ZNSt7__cxx119to_stringEi
	add	x1, sp, 232
	add	x0, sp, 128
	add	x0, sp, 232
	b	.L25
	add	x0, sp, 264
	mov	x8, x0
	ldr	w0, [sp, 328]
	bl	_ZNSt7__cxx119to_stringEi
	add	x1, sp, 264
	add	x0, sp, 128
	add	x0, sp, 264
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	add	x0, sp, 128
	add	x1, sp, 296
	mov	x8, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x0, sp, 296
	mov	x1, x0
	mov	x0, x19
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 296
	add	x0, sp, 128
	add	x0, sp, 96
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 164]
	sub	w1, w0, #1
	str	w1, [sp, 164]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 336
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
	b	.L31
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
	bne	.L32
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
	b	.L36
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
	bhi	.L37
	ldr	w0, [sp]
	cmp	w0, 9
	bls	.L38
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
	b	.L40
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
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 32]
	add	x0, sp, 64
	add	x1, sp, 56
	mov	x8, x1
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	add	x0, sp, 64
	bl	_ZNSaIcED1Ev
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	mov	x8, x19
	ldr	x0, [sp, 40]
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSaIcEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L49
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L49
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