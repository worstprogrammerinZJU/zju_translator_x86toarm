main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w1, [x29, 100]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 112]
	sxtw	x0, w1
	mov	x26, x0
	mov	x27, 0
	lsr	x0, x26, 59
	lsl	x23, x27, 5
	orr	x23, x0, x23
	lsl	x22, x26, 5
	sxtw	x0, w1
	mov	x24, x0
	mov	x25, 0
	lsr	x0, x24, 59
	lsl	x21, x25, 5
	orr	x21, x0, x21
	lsl	x20, x24, 5
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x2, x0, -65536
	sub	x2, sp, x2
	cmp	sp, x2
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x2, x0, 65535
	sub	sp, sp, x2
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	sxtw	x1, w1
	sub	x2, x1, #1
	str	wzr, [x0]
	add	x1, x0, 4
	sub	x0, x2, #1
	b	.L5
	str	wzr, [x1]
	add	x1, x1, 4
	sub	x0, x0, #1
	cmp	x0, 0
	bge	.L6
	str	wzr, [x29, 124]
	b	.L7
	add	x0, x29, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 96]
	sub	w3, w0, #1
	ldr	x0, [x29, 104]
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	ldr	x0, [x29, 104]
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 124]
	add	w0, w0, 1
	str	w0, [x29, 124]
	ldr	w0, [x29, 100]
	sub	w0, w0, #1
	ldr	w1, [x29, 124]
	cmp	w1, w0
	blt	.L8
	str	wzr, [x29, 120]
	b	.L9
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L11
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	str	w0, [x29, 120]
	ldr	w0, [x29, 100]
	ldr	w1, [x29, 120]
	cmp	w1, w0
	blt	.L12
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 128
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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