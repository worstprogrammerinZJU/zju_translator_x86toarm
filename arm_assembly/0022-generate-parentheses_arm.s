DefStr:
push_back:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 12]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	cmp	w1, w0
	bgt	.L4
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	add	w3, w0, 1
	ldr	x2, [sp, 8]
	str	w3, [x2, 12]
	sxtw	x0, w0
	add	x0, x1, x0
	ldrb	w1, [sp, 7]
	strb	w1, [x0]
	b	.L1
	nop
	add	sp, sp, 16
	ret
pop_back:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	cmp	w0, 0
	beq	.L8
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sub	w3, w0, #1
	ldr	x2, [sp, 8]
	str	w3, [x2, 12]
	sxtw	x0, w0
	add	x0, x1, x0
	strb	wzr, [x0]
	b	.L5
	nop
	add	sp, sp, 16
	ret
backtrack:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	str	w2, [sp, 64]
	str	w3, [sp, 60]
	str	x4, [sp, 48]
	str	x5, [sp, 40]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	bgt	.L14
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 60]
	add	w1, w1, w0
	ldr	w0, [sp, 68]
	lsl	w0, w0, 1
	cmp	w1, w0
	bne	.L12
	ldr	w0, [sp, 68]
	lsl	w0, w0, 1
	add	w0, w0, 1
	sxtw	x2, w0
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x1, 1
	mov	x0, x2
	bl	calloc
	str	x0, [x19]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x3, [x0]
	ldr	x0, [sp, 48]
	ldr	x1, [x0]
	ldr	w0, [sp, 68]
	lsl	w0, w0, 1
	sxtw	x0, w0
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 40]
	str	w1, [x0]
	b	.L9
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	bge	.L13
	mov	w1, 40
	ldr	x0, [sp, 48]
	bl	push_back
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	ldr	x5, [sp, 40]
	ldr	x4, [sp, 48]
	ldr	w3, [sp, 60]
	mov	w2, w0
	ldr	w1, [sp, 68]
	ldr	x0, [sp, 72]
	bl	backtrack
	ldr	x0, [sp, 48]
	bl	pop_back
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	bge	.L9
	mov	w1, 41
	ldr	x0, [sp, 48]
	bl	push_back
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldr	x5, [sp, 40]
	ldr	x4, [sp, 48]
	mov	w3, w0
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 68]
	ldr	x0, [sp, 72]
	bl	backtrack
	ldr	x0, [sp, 48]
	bl	pop_back
	b	.L9
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
generateParenthesis:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	scvtf	d0, w0
	fmov	d1, d0
	fmov	d0, 2.0e+0
	bl	pow
	fmov	d1, d0
	fmov	d0, 8.0e+0
	fmul	d0, d1, d0
	fcvtzu	x0, d0
	bl	malloc
	str	x0, [sp, 56]
	stp	xzr, xzr, [sp, 40]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, 1
	bl	calloc
	str	x0, [sp, 40]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 48]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	add	x0, sp, 40
	ldr	x5, [sp, 16]
	mov	x4, x0
	mov	w3, 0
	mov	w2, 0
	ldr	w1, [sp, 28]
	ldr	x0, [sp, 56]
	bl	backtrack
	ldr	x0, [sp, 40]
	bl	free
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret