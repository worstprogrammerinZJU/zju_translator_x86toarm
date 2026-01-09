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
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [sp, 16]
	bl	_Z5setupv
	add	x0, sp, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	add	x0, sp, 32
	add	x0, sp, 64
	str	xzr, [sp, 120]
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	strb	wzr, [sp, 119]
	str	wzr, [sp, 112]
	b	.L4
	ldrb	w0, [sp, 119]
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 112]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	bne	.L22
	ldr	x0, [sp, 120]
	add	x0, x0, 2
	str	x0, [sp, 120]
	strb	wzr, [sp, 119]
	b	.L9
	ldrsw	x1, [sp, 112]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L10
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L10
	mov	w0, 1
	b	.L11
	mov	w0, 0
	cmp	w0, 0
	beq	.L12
	mov	w0, 1
	strb	w0, [sp, 119]
	ldrsw	x1, [sp, 112]
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L13
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L13
	mov	w0, 1
	b	.L14
	mov	w0, 0
	cmp	w0, 0
	beq	.L15
	ldrsw	x1, [sp, 112]
	ldr	x0, [sp, 96]
	cmp	x1, x0
	bge	.L16
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L16
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L16
	mov	w0, 1
	b	.L17
	mov	w0, 0
	cmp	w0, 0
	beq	.L18
	ldr	x0, [sp, 120]
	add	x0, x0, 2
	str	x0, [sp, 120]
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	b	.L9
	ldr	x0, [sp, 120]
	add	x0, x0, 1
	str	x0, [sp, 120]
	b	.L9
	ldrsw	x1, [sp, 112]
	add	x0, sp, 32
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 112]
	add	x0, sp, 64
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldr	x0, [sp, 120]
	add	x0, x0, 2
	str	x0, [sp, 120]
	b	.L9
	nop
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	ldrsw	x1, [sp, 112]
	ldr	x0, [sp, 96]
	cmp	x1, x0
	blt	.L19
	ldr	x1, [sp, 120]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	add	x0, sp, 64
	add	x0, sp, 32
	ldr	w0, [sp, 108]
	sub	w1, w0, #1
	str	w1, [sp, 108]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L20
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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