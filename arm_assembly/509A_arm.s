_ZL3INF:
main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 204
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [x29, 204]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 224]
	sxtw	x0, w2
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x4, x5, [x29, 128]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 184]
	ldr	x1, [x29, 184]
	orr	x0, x0, x1
	str	x0, [x29, 184]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 176]
	sxtw	x0, w2
	lsl	x0, x0, 2
	ldr	w3, [x29, 204]
	sxtw	x1, w3
	sub	x1, x1, #1
	str	x1, [x29, 216]
	sxtw	x1, w2
	mov	x26, x1
	mov	x27, 0
	sxtw	x1, w3
	mov	x24, x1
	mov	x25, 0
	mul	x4, x26, x24
	umulh	x1, x26, x24
	madd	x1, x27, x24, x1
	madd	x1, x26, x25, x1
	str	x4, [x29, 112]
	str	x1, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x1, x4
	lsr	x1, x1, 59
	mov	x6, x5
	lsl	x6, x6, 5
	str	x6, [x29, 168]
	ldr	x6, [x29, 168]
	orr	x1, x1, x6
	str	x1, [x29, 168]
	mov	x1, x4
	lsl	x1, x1, 5
	str	x1, [x29, 160]
	sxtw	x1, w2
	mov	x22, x1
	mov	x23, 0
	sxtw	x1, w3
	mov	x20, x1
	mov	x21, 0
	mul	x4, x22, x20
	umulh	x1, x22, x20
	madd	x1, x23, x20, x1
	madd	x1, x22, x21, x1
	str	x4, [x29, 96]
	str	x1, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x1, x4
	lsr	x1, x1, 59
	mov	x6, x5
	lsl	x6, x6, 5
	str	x6, [x29, 152]
	ldr	x6, [x29, 152]
	orr	x1, x1, x6
	str	x1, [x29, 152]
	mov	x1, x4
	lsl	x1, x1, 5
	str	x1, [x29, 144]
	sxtw	x2, w2
	sxtw	x1, w3
	mul	x1, x2, x1
	lsl	x1, x1, 2
	add	x1, x1, 15
	lsr	x1, x1, 4
	lsl	x1, x1, 4
	and	x2, x1, -65536
	sub	x2, sp, x2
	cmp	sp, x2
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x2, x1, 65535
	sub	sp, sp, x2
	str	xzr, [sp]
	and	x1, x1, 65535
	cmp	x1, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x1, sp, 16
	add	x1, x1, 3
	lsr	x1, x1, 2
	lsl	x1, x1, 2
	str	x1, [x29, 208]
	str	wzr, [x29, 236]
	b	.L5
	str	wzr, [x29, 232]
	b	.L6
	ldr	w1, [x29, 236]
	cmp	w1, 0
	beq	.L7
	ldr	w1, [x29, 232]
	cmp	w1, 0
	bne	.L8
	lsr	x2, x0, 2
	ldr	x1, [x29, 208]
	ldrsw	x3, [x29, 232]
	ldrsw	x4, [x29, 236]
	mul	x2, x4, x2
	add	x2, x3, x2
	mov	w3, 1
	str	w3, [x1, x2, lsl 2]
	b	.L9
	lsr	x2, x0, 2
	ldr	w1, [x29, 236]
	sub	w4, w1, #1
	ldr	x1, [x29, 208]
	ldrsw	x3, [x29, 232]
	sxtw	x4, w4
	mul	x2, x4, x2
	add	x2, x3, x2
	ldr	w3, [x1, x2, lsl 2]
	lsr	x2, x0, 2
	ldr	w1, [x29, 232]
	sub	w4, w1, #1
	ldr	x1, [x29, 208]
	sxtw	x4, w4
	ldrsw	x5, [x29, 236]
	mul	x2, x5, x2
	add	x2, x4, x2
	ldr	w1, [x1, x2, lsl 2]
	lsr	x2, x0, 2
	add	w3, w3, w1
	ldr	x1, [x29, 208]
	ldrsw	x4, [x29, 232]
	ldrsw	x5, [x29, 236]
	mul	x2, x5, x2
	add	x2, x4, x2
	str	w3, [x1, x2, lsl 2]
	ldr	w1, [x29, 232]
	add	w1, w1, 1
	str	w1, [x29, 232]
	ldr	w1, [x29, 204]
	ldr	w2, [x29, 232]
	cmp	w2, w1
	blt	.L10
	ldr	w1, [x29, 236]
	add	w1, w1, 1
	str	w1, [x29, 236]
	ldr	w1, [x29, 204]
	ldr	w2, [x29, 236]
	cmp	w2, w1
	blt	.L11
	lsr	x1, x0, 2
	ldr	w0, [x29, 204]
	sub	w3, w0, #1
	ldr	w0, [x29, 204]
	sub	w2, w0, #1
	ldr	x0, [x29, 208]
	sxtw	x2, w2
	sxtw	x3, w3
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 240
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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