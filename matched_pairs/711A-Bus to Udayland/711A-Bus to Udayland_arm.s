main:
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	str	x0, [x29, 104]
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	mov	w0, 0
	add	x0, x29, 156
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, x29, 120
	strb	wzr, [x29, 191]
	ldr	w28, [x29, 156]
	sxtw	x0, w28
	sub	x0, x0, #1
	str	x0, [x29, 168]
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
	str	x0, [x29, 160]
	ldr	x1, [x29, 160]
	sxtw	x0, w28
	sub	x19, x0, #1
	mov	x20, x1
	b	.L5
	mov	x0, x20
	add	x20, x20, 32
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L6
	str	wzr, [x29, 184]
	b	.L7
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldrb	w0, [x29, 191]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L9
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 1
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L9
	mov	w0, 1
	b	.L10
	mov	w0, 0
	cmp	w0, 0
	beq	.L11
	mov	w0, 1
	strb	w0, [x29, 191]
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 0
	mov	x1, x0
	mov	w0, 43
	strb	w0, [x1]
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 1
	mov	x1, x0
	mov	w0, 43
	strb	w0, [x1]
	b	.L8
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 3
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L12
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 4
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L12
	mov	w0, 1
	b	.L13
	mov	w0, 0
	cmp	w0, 0
	beq	.L8
	mov	w0, 1
	strb	w0, [x29, 191]
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 3
	mov	x1, x0
	mov	w0, 43
	strb	w0, [x1]
	ldrsw	x0, [x29, 184]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, 4
	mov	x1, x0
	mov	w0, 43
	strb	w0, [x1]
	ldr	w0, [x29, 184]
	add	w0, w0, 1
	str	w0, [x29, 184]
	ldr	w0, [x29, 156]
	ldr	w1, [x29, 184]
	cmp	w1, w0
	blt	.L14
	ldrb	w0, [x29, 191]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w20, 0
	b	.L16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	str	wzr, [x29, 180]
	b	.L17
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	ldr	w0, [x29, 180]
	add	w0, w0, 1
	str	w0, [x29, 180]
	ldr	w0, [x29, 156]
	ldr	w1, [x29, 180]
	cmp	w1, w0
	blt	.L18
	mov	w20, 0
	sxtw	x0, w28
	lsl	x0, x0, 5
	ldr	x1, [x29, 160]
	add	x19, x1, x0
	ldr	x0, [x29, 160]
	cmp	x0, x19
	beq	.L22
	sub	x19, x19, #32
	mov	x0, x19
	b	.L20
	nop
	add	x0, x29, 120
	ldr	x0, [x29, 104]
	mov	sp, x0
	mov	w0, w20
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 192
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