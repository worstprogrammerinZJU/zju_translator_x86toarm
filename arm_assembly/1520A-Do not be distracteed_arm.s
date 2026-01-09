main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	add	x0, x29, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	mov	x0, sp
	mov	x19, x0
	str	wzr, [x29, 140]
	add	x0, x29, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 104]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 120]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x21, x25, 3
	orr	x21, x1, x21
	lsl	x20, x24, 3
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x23, x27, 3
	orr	x23, x1, x23
	lsl	x22, x26, 3
	sxtw	x0, w0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L4
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L3
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L5
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 112]
	str	wzr, [x29, 136]
	b	.L6
	ldrsw	x0, [x29, 136]
	ldr	x1, [x29, 112]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [x29, 136]
	add	w0, w0, 1
	str	w0, [x29, 136]
	ldr	w0, [x29, 104]
	ldr	w1, [x29, 136]
	cmp	w1, w0
	blt	.L7
	mov	w0, 1
	str	w0, [x29, 132]
	b	.L8
	ldr	x1, [x29, 112]
	ldrsw	x0, [x29, 132]
	ldrb	w1, [x1, x0]
	ldr	w0, [x29, 132]
	sub	w0, w0, #1
	ldr	x2, [x29, 112]
	sxtw	x0, w0
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	beq	.L9
	ldr	w0, [x29, 132]
	sub	w0, w0, #1
	str	w0, [x29, 128]
	b	.L10
	ldr	x1, [x29, 112]
	ldrsw	x0, [x29, 128]
	ldrb	w1, [x1, x0]
	ldr	x2, [x29, 112]
	ldrsw	x0, [x29, 132]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	str	w0, [x29, 140]
	b	.L9
	ldr	w0, [x29, 128]
	sub	w0, w0, #1
	str	w0, [x29, 128]
	ldr	w0, [x29, 128]
	cmp	w0, 0
	bge	.L13
	ldr	w0, [x29, 132]
	add	w0, w0, 1
	str	w0, [x29, 132]
	ldr	w0, [x29, 104]
	ldr	w1, [x29, 132]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [x29, 140]
	cmp	w0, 1
	bne	.L15
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x19
	ldr	w0, [x29, 108]
	sub	w1, w0, #1
	str	w1, [x29, 108]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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