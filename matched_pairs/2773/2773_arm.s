main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 64]
	str	w0, [sp, 72]
	ldr	w0, [sp, 64]
	str	w0, [sp, 92]
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	mov	w0, 2
	str	w0, [sp, 16]
	ldr	w0, [sp, 92]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 72]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L5
	str	wzr, [sp, 88]
	mov	w0, 3
	str	w0, [sp, 84]
	b	.L6
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 88]
	add	w1, w0, 1
	str	w1, [sp, 88]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w2, [sp, 84]
	str	w2, [x1, x0]
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 84]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 92]
	sub	w0, w1, w0
	str	w0, [sp, 92]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 84]
	sdiv	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 84]
	add	w0, w0, 2
	str	w0, [sp, 84]
	ldr	w0, [sp, 72]
	cmp	w0, 1
	bgt	.L9
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 88]
	add	w1, w0, 1
	str	w1, [sp, 88]
	ldr	w2, [sp, 64]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 64]
	cmp	w0, 1
	beq	.L10
	ldr	w0, [sp, 92]
	sub	w0, w0, #1
	str	w0, [sp, 92]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 92]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 64]
	mul	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 92]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 92]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 92]
	str	w0, [sp, 60]
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 68]
	sub	w0, w1, w0
	str	w0, [sp, 68]
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	str	w0, [sp, 84]
	b	.L12
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	str	wzr, [sp, 80]
	b	.L13
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 76]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L24
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L16
	b	.L15
	nop
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	beq	.L25
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L19
	nop
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 84]
	cmp	w1, w0
	blt	.L20
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x1, sp, 60
	add	x0, sp, 64
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret