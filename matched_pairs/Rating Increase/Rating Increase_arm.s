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
main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L4
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 64
	add	x0, sp, 96
	str	wzr, [sp, 144]
	str	wzr, [sp, 140]
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w1, [x0]
	add	x0, sp, 64
	str	wzr, [sp, 156]
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L5
	ldrsw	x1, [sp, 152]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldrsw	x1, [sp, 152]
	add	x0, sp, 32
	ldrb	w1, [x0]
	add	x0, sp, 64
	b	.L16
	ldr	w0, [sp, 152]
	str	w0, [sp, 156]
	b	.L8
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldrsw	x19, [sp, 152]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 156]
	str	w0, [sp, 148]
	b	.L10
	ldrsw	x1, [sp, 148]
	add	x0, sp, 32
	ldrb	w1, [x0]
	add	x0, sp, 96
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldrsw	x19, [sp, 148]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	add	x0, sp, 64
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 136]
	add	x0, sp, 96
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 132]
	ldr	w0, [sp, 136]
	str	w0, [sp, 144]
	ldr	w0, [sp, 132]
	str	w0, [sp, 140]
	ldr	w1, [sp, 136]
	ldr	w0, [sp, 132]
	cmp	w1, w0
	blt	.L12
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 96
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 96
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 128]
	sub	w1, w0, #1
	str	w1, [sp, 128]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
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
	bne	.L20
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
	blt	.L22
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L23
	mov	w0, 1
	b	.L24
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
	bne	.L27
	ldr	x0, [sp, 64]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L28
	mov	w1, w19
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	mov	w0, 1
	b	.L30
	mov	w0, 0
	cmp	w0, 0
	beq	.L31
	ldr	x0, [sp, 64]
	ldr	x0, [sp, 104]
	str	w0, [sp, 100]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L32
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L36
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L36
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