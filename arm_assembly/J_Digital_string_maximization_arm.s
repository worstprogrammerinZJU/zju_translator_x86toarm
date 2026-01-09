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
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 32
	str	w0, [sp, 64]
	str	wzr, [sp, 92]
	b	.L4
	ldrsw	x1, [sp, 92]
	add	x0, sp, 32
	ldrb	w0, [x0]
	sub	w0, w0, #48
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	str	w0, [sp, 84]
	ldr	w0, [sp, 92]
	str	w0, [sp, 80]
	b	.L5
	ldrsw	x1, [sp, 80]
	add	x0, sp, 32
	ldrb	w0, [x0]
	mov	w2, w0
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 92]
	sub	w0, w1, w0
	cmp	w2, w0
	ble	.L6
	ldrsw	x1, [sp, 80]
	add	x0, sp, 32
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 80]
	sub	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w0, w1, w0
	ldr	w1, [sp, 88]
	cmp	w1, w0
	bge	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 80]
	str	w0, [sp, 84]
	ldrsw	x1, [sp, 80]
	add	x0, sp, 32
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 80]
	sub	w0, w1, w0
	ldr	w1, [sp, 92]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 9
	str	w0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 64
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [sp, 80]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 84]
	str	w0, [sp, 76]
	b	.L10
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 92]
	cmp	w1, w0
	bgt	.L11
	ldr	w0, [sp, 88]
	and	w19, w0, 255
	ldrsw	x1, [sp, 92]
	add	x0, sp, 32
	mov	w1, w19
	strb	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L12
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	add	x0, sp, 32
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L16
	ldr	x0, [sp]
	b	.L17
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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