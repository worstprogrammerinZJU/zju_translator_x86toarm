main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 68]
	b	.L2
	ldrsw	x1, [sp, 68]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 96
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldrsw	x19, [sp, 68]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	blt	.L6
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x20, x0
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:tolower
	ldr	x3, [x0, #:got_lo12:tolower]
	mov	x2, x1
	mov	x1, x20
	mov	x0, x19
	b	.L7
	add	x0, sp, 32
	mov	x19, x0
	add	x0, sp, 32
	mov	x20, x0
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:toupper
	ldr	x3, [x0, #:got_lo12:toupper]
	mov	x2, x1
	mov	x1, x20
	mov	x0, x19
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 32
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	b	.L10
	ldr	x19, [sp, 32]
	add	x0, sp, 56
	ldrb	w0, [x0]
	blr	x19
	and	w19, w0, 255
	add	x0, sp, 40
	mov	w1, w19
	strb	w1, [x0]
	add	x0, sp, 56
	add	x0, sp, 40
	add	x1, sp, 48
	add	x0, sp, 56
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	cset	w0, ne
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
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L23
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L23
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