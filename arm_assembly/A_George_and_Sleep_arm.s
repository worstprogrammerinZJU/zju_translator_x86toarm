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
main:
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 72
	add	x0, sp, 40
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 40
	add	x1, sp, 104
	mov	x8, x1
	mov	x2, 2
	mov	x1, 0
	add	x0, sp, 104
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 240]
	add	x0, sp, 104
	add	x0, sp, 40
	add	x1, sp, 136
	mov	x8, x1
	mov	x2, 2
	mov	x1, 3
	add	x0, sp, 136
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 236]
	add	x0, sp, 136
	add	x0, sp, 72
	add	x1, sp, 168
	mov	x8, x1
	mov	x2, 2
	mov	x1, 0
	add	x0, sp, 168
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 252]
	add	x0, sp, 168
	add	x0, sp, 72
	add	x1, sp, 200
	mov	x8, x1
	mov	x2, 2
	mov	x1, 3
	add	x0, sp, 200
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 232]
	add	x0, sp, 200
	ldr	w1, [sp, 232]
	ldr	w0, [sp, 236]
	sub	w0, w1, w0
	str	w0, [sp, 248]
	ldr	w0, [sp, 248]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 248]
	add	w0, w0, 60
	str	w0, [sp, 248]
	ldr	w0, [sp, 252]
	sub	w0, w0, #1
	str	w0, [sp, 252]
	ldr	w1, [sp, 252]
	ldr	w0, [sp, 240]
	sub	w0, w1, w0
	str	w0, [sp, 244]
	ldr	w0, [sp, 244]
	cmp	w0, 0
	bge	.L6
	ldr	w0, [sp, 244]
	add	w0, w0, 24
	str	w0, [sp, 244]
	ldr	w0, [sp, 244]
	cmp	w0, 9
	bgt	.L7
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 244]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	ldr	w0, [sp, 248]
	cmp	w0, 9
	bgt	.L8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 248]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w19, 0
	add	x0, sp, 40
	add	x0, sp, 72
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 256
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
	bne	.L13
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
	blt	.L15
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L16
	mov	w0, 1
	b	.L17
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
	bne	.L20
	ldr	x0, [sp, 64]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L21
	mov	w1, w19
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	mov	w0, 1
	b	.L23
	mov	w0, 0
	cmp	w0, 0
	beq	.L24
	ldr	x0, [sp, 64]
	ldr	x0, [sp, 104]
	str	w0, [sp, 100]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L25
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
	bne	.L29
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L29
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