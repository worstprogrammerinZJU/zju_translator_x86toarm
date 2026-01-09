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
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	bl	_Z5setupv
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L3
	str	xzr, [sp, 72]
	str	xzr, [sp, 64]
	str	xzr, [sp, 56]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	strb	wzr, [sp, 55]
	strb	wzr, [sp, 54]
	str	xzr, [sp, 40]
	b	.L4
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	asr	x0, x0, x1
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L5
	ldrb	w0, [sp, 55]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	x0, [sp, 40]
	mov	w1, w0
	mov	w0, 1
	lsl	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	mov	w0, 1
	strb	w0, [sp, 55]
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
	b	.L7
	ldrb	w0, [sp, 54]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 54]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 30
	ble	.L8
	ldr	x0, [sp, 64]
	cmp	x0, 1
	bne	.L9
	ldr	x0, [sp, 56]
	mov	w1, w0
	mov	w0, 1
	lsl	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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