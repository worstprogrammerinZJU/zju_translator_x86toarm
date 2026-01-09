	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	ldr	w4, [sp, 28]
	ldr	x3, [sp, 32]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:strtol
	ldr	x0, [x0, #:got_lo12:strtol]
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
	beq	.L4
	ldr	w0, [sp, 44]
	neg	w0, w0
	b	.L5
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
	bcs	.L8
	ldr	w0, [sp, 44]
	b	.L9
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bcs	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	b	.L9
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bcs	.L11
	ldr	w0, [sp, 44]
	add	w0, w0, 2
	b	.L9
	ldr	w0, [sp, 12]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bls	.L12
	ldr	w0, [sp, 44]
	add	w0, w0, 3
	b	.L9
	ldr	w1, [sp, 12]
	ldr	x0, [sp, 24]
	udiv	x0, x1, x0
	str	w0, [sp, 12]
	ldr	w0, [sp, 44]
	add	w0, w0, 4
	str	w0, [sp, 44]
	b	.L13
	add	sp, sp, 48
	ret
_ZSt4setwi:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
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
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
_Z12isPalindromeii:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w0, 9
	bgt	.L18
	adrp	x0, .LC5
	add	x19, x0, :lo12:.LC5
	b	.L19
	adrp	x0, .LC6
	add	x19, x0, :lo12:.LC6
	add	x0, sp, 112
	mov	x8, x0
	ldr	w0, [sp, 44]
	bl	_ZNSt7__cxx119to_stringEi
	add	x0, sp, 112
	add	x1, sp, 80
	mov	x8, x1
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 112
	ldr	w0, [sp, 40]
	cmp	w0, 9
	bgt	.L20
	adrp	x0, .LC5
	add	x19, x0, :lo12:.LC5
	b	.L21
	adrp	x0, .LC6
	add	x19, x0, :lo12:.LC6
	add	x0, sp, 144
	mov	x8, x0
	ldr	w0, [sp, 40]
	bl	_ZNSt7__cxx119to_stringEi
	add	x0, sp, 144
	add	x1, sp, 48
	mov	x8, x1
	mov	x1, x0
	mov	x0, x19
	add	x0, sp, 144
	add	x0, sp, 80
	mov	x1, 0
	ldrb	w19, [x0]
	add	x0, sp, 48
	mov	x1, 1
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L22
	add	x0, sp, 80
	mov	x1, 1
	ldrb	w19, [x0]
	add	x0, sp, 48
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L22
	mov	w19, 1
	b	.L23
	mov	w19, 0
	add	x0, sp, 48
	add	x0, sp, 80
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 176
	ret
main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 40
	add	x1, sp, 72
	mov	x8, x1
	mov	x2, 2
	mov	x1, 0
	add	x0, sp, 72
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 140]
	add	x0, sp, 72
	add	x0, sp, 40
	add	x1, sp, 104
	mov	x8, x1
	mov	x2, 2
	mov	x1, 3
	add	x0, sp, 104
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 136]
	add	x0, sp, 104
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 60
	bne	.L26
	str	wzr, [sp, 136]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 140]
	cmp	w0, 24
	bne	.L27
	str	wzr, [sp, 140]
	ldr	w1, [sp, 136]
	ldr	w0, [sp, 140]
	bl	_Z12isPalindromeii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L30
	mov	w0, 2
	bl	_ZSt4setwi
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	mov	w0, 48
	mov	w1, w0
	mov	x0, x19
	ldr	w1, [sp, 140]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	mov	x19, x0
	mov	w0, 2
	bl	_ZSt4setwi
	mov	w1, w0
	mov	x0, x19
	mov	x19, x0
	mov	w0, 48
	mov	w1, w0
	mov	x0, x19
	ldr	w1, [sp, 136]
	bl	_ZNSolsEi
	nop
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	bl	__errno_location
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L36
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp]
	ldr	x1, [sp, 8]
	mov	x0, -2147483648
	cmp	x1, x0
	blt	.L38
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L39
	mov	w0, 1
	b	.L40
	mov	w0, 0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	w4, [sp, 44]
	add	x0, sp, 80
	ldr	x3, [sp, 72]
	add	x0, sp, 88
	ldr	w2, [sp, 44]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x3
	str	x0, [sp, 104]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bne	.L43
	ldr	x0, [sp, 64]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L44
	mov	w1, w19
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L45
	mov	w0, 1
	b	.L46
	mov	w0, 0
	cmp	w0, 0
	beq	.L47
	ldr	x0, [sp, 64]
	ldr	x0, [sp, 104]
	str	w0, [sp, 100]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L48
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 48]
	str	x1, [x0]
	ldr	w19, [sp, 100]
	add	x0, sp, 80
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
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
	b	.L52
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
	bhi	.L53
	ldr	w0, [sp]
	cmp	w0, 9
	bls	.L54
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
	b	.L56
	ldr	w0, [sp]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	strb	w1, [x0]
	nop
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x2, [sp, 40]
	mov	x1, 0
	ldr	x0, [sp, 32]
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
	sub	sp, sp, #16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L65
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L65
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