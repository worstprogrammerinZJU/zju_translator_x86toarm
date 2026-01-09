main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	str	x0, [x29, 104]
	add	x0, x29, 116
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w28, [x29, 116]
	sxtw	x0, w28
	sub	x0, x0, #1
	str	x0, [x29, 128]
	sxtw	x0, w28
	mov	x26, x0
	mov	x27, 0
	lsr	x0, x26, 56
	lsl	x23, x27, 8
	orr	x23, x0, x23
	lsl	x22, x26, 8
	sxtw	x0, w28
	mov	x24, x0
	mov	x25, 0
	lsr	x0, x24, 56
	lsl	x21, x25, 8
	orr	x21, x0, x21
	lsl	x20, x24, 8
	sxtw	x0, w28
	lsl	x0, x0, 5
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 120]
	ldr	x1, [x29, 120]
	sxtw	x0, w28
	sub	x19, x0, #1
	mov	x20, x1
	b	.L5
	mov	x0, x20
	add	x20, x20, 32
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L6
	str	wzr, [x29, 140]
	b	.L7
	ldrsw	x0, [x29, 140]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [x29, 140]
	add	w0, w0, 1
	str	w0, [x29, 140]
	ldr	w0, [x29, 116]
	ldr	w1, [x29, 140]
	cmp	w1, w0
	blt	.L8
	str	wzr, [x29, 136]
	b	.L9
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	cmp	x0, 10
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	sub	x0, x0, #2
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEm
	mov	x20, x0
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x19, x1, x0
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	sub	x0, x0, #1
	mov	x1, x0
	mov	x0, x19
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x20
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L11
	ldrsw	x0, [x29, 136]
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [x29, 136]
	add	w0, w0, 1
	str	w0, [x29, 136]
	ldr	w0, [x29, 116]
	ldr	w1, [x29, 136]
	cmp	w1, w0
	blt	.L12
	mov	w20, 0
	sxtw	x0, w28
	lsl	x0, x0, 5
	ldr	x1, [x29, 120]
	add	x19, x1, x0
	ldr	x0, [x29, 120]
	cmp	x0, x19
	beq	.L16
	sub	x19, x19, #32
	mov	x0, x19
	b	.L14
	nop
	ldr	x0, [x29, 104]
	mov	sp, x0
	mov	w0, w20
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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