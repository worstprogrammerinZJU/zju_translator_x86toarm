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
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 152
	add	x0, sp, 152
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 48
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 188]
	b	.L3
	ldrsw	x1, [sp, 188]
	add	x0, sp, 152
	ldrb	w0, [x0]
	bl	tolower
	and	w19, w0, 255
	ldrsw	x1, [sp, 188]
	add	x0, sp, 152
	mov	w1, w19
	strb	w1, [x0]
	ldrsw	x1, [sp, 188]
	add	x0, sp, 152
	ldrb	w0, [x0]
	sub	w3, w0, #97
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	w2, [x1, x0]
	ldr	w0, [sp, 188]
	add	w0, w0, 1
	str	w0, [sp, 188]
	ldrsw	x19, [sp, 188]
	add	x0, sp, 152
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L4
	mov	w0, 2147483647
	str	w0, [sp, 44]
	str	wzr, [sp, 184]
	b	.L5
	ldr	w0, [sp, 184]
	and	w0, w0, 255
	cmp	w0, 4
	beq	.L6
	ldr	w0, [sp, 184]
	and	w0, w0, 255
	cmp	w0, 6
	beq	.L6
	ldr	w0, [sp, 184]
	and	w0, w0, 255
	cmp	w0, 24
	beq	.L6
	ldr	w0, [sp, 184]
	and	w0, w0, 255
	cmp	w0, 15
	beq	.L6
	ldr	w0, [sp, 184]
	and	w0, w0, 255
	cmp	w0, 19
	bne	.L7
	add	x1, sp, 48
	ldrsw	x0, [sp, 184]
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 44
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w0, [sp, 184]
	add	w0, w0, 1
	str	w0, [sp, 184]
	ldr	w0, [sp, 184]
	cmp	w0, 25
	ble	.L8
	ldr	w0, [sp, 44]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w19, 0
	add	x0, sp, 152
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 192
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L11
	ldr	x0, [sp]
	b	.L12
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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