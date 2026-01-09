main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 120
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [x29, 120]
	sub	x1, x0, #1
	str	x1, [x29, 136]
	mov	x1, x0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	mov	x1, x0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	lsl	x0, x0, 3
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
	str	x0, [x29, 128]
	str	xzr, [x29, 152]
	b	.L5
	ldr	x0, [x29, 152]
	lsl	x0, x0, 3
	ldr	x1, [x29, 128]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [x29, 152]
	add	x0, x0, 1
	str	x0, [x29, 152]
	ldr	x0, [x29, 120]
	ldr	x1, [x29, 152]
	cmp	x1, x0
	blt	.L6
	mov	x0, 1
	str	x0, [x29, 112]
	mov	x0, 1
	str	x0, [x29, 104]
	mov	x0, 1
	str	x0, [x29, 144]
	b	.L7
	ldr	x0, [x29, 128]
	ldr	x1, [x29, 144]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 144]
	sub	x2, x0, #1
	ldr	x0, [x29, 128]
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	blt	.L8
	ldr	x0, [x29, 104]
	add	x0, x0, 1
	str	x0, [x29, 104]
	add	x1, x29, 104
	add	x0, x29, 112
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [x29, 112]
	b	.L9
	mov	x0, 1
	str	x0, [x29, 104]
	ldr	x0, [x29, 144]
	add	x0, x0, 1
	str	x0, [x29, 144]
	ldr	x0, [x29, 120]
	ldr	x1, [x29, 144]
	cmp	x1, x0
	blt	.L10
	ldr	x0, [x29, 112]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 160
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L13
	ldr	x0, [sp]
	b	.L14
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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