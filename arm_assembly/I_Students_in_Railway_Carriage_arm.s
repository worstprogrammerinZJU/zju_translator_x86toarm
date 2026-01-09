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
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 84
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 80
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 76
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 80]
	cmp	w1, w0
	ble	.L3
	add	x1, sp, 76
	add	x0, sp, 80
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L4
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 42
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 46
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 88]
	cmp	w0, 0
	ble	.L7
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 98
	bne	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 80]
	cmp	w0, 0
	ble	.L19
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	b	.L6
	ldr	w0, [sp, 88]
	cmp	w0, 0
	ble	.L11
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 97
	bne	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 76]
	cmp	w0, 0
	ble	.L20
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 98
	strb	w0, [x1]
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	b	.L6
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	ble	.L15
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 97
	strb	w0, [x1]
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	b	.L6
	ldr	w0, [sp, 76]
	cmp	w0, 0
	ble	.L6
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	mov	x1, x0
	mov	w0, 98
	strb	w0, [x1]
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	b	.L6
	nop
	b	.L6
	nop
	b	.L6
	nop
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L16
	ldr	w1, [sp, 92]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w19, 0
	add	x0, sp, 40
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L26
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L26
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