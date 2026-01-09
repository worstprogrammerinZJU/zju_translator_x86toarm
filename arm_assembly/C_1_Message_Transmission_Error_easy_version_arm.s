	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L4
	mov	w0, 0
	b	.L5
	mov	w0, 0
	cmp	w0, 0
	beq	.L6
	str	xzr, [sp, 56]
	b	.L7
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	mov	w0, -1
	b	.L5
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	b	.L5
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L10
	mov	w0, 0
	b	.L5
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcmp
	nop
	ldp	x29, x30, [sp], 64
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
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 72
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	strb	wzr, [sp, 207]
	add	x0, sp, 40
	add	x0, sp, 72
	lsr	x0, x0, 1
	add	w0, w0, 1
	str	w0, [sp, 200]
	b	.L13
	ldrsw	x1, [sp, 200]
	add	x0, sp, 72
	add	x2, sp, 104
	mov	x8, x2
	mov	x2, x1
	mov	x1, 0
	add	x0, sp, 72
	mov	x1, x0
	ldrsw	x0, [sp, 200]
	sub	x1, x1, x0
	ldrsw	x2, [sp, 200]
	add	x0, sp, 72
	add	x3, sp, 136
	mov	x8, x3
	add	x1, sp, 136
	add	x0, sp, 104
	and	w19, w0, 255
	add	x0, sp, 136
	add	x0, sp, 104
	cmp	w19, 0
	beq	.L14
	mov	w0, 1
	strb	w0, [sp, 207]
	ldrsw	x1, [sp, 200]
	add	x0, sp, 72
	add	x2, sp, 168
	mov	x8, x2
	mov	x2, x1
	mov	x1, 0
	add	x1, sp, 168
	add	x0, sp, 40
	add	x0, sp, 168
	b	.L15
	ldr	w0, [sp, 200]
	add	w0, w0, 1
	str	w0, [sp, 200]
	ldrsw	x19, [sp, 200]
	add	x0, sp, 72
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	ldrb	w0, [sp, 207]
	cmp	w0, 0
	beq	.L17
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	b	.L18
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	mov	w19, 0
	add	x0, sp, 40
	add	x0, sp, 72
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	cmp	x19, x0
	bne	.L21
	ldr	x0, [sp, 40]
	mov	x19, x0
	ldr	x0, [sp, 32]
	mov	x20, x0
	ldr	x0, [sp, 40]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	cmp	w0, 0
	bne	.L21
	mov	w0, 1
	b	.L22
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
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