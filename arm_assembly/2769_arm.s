main:
	mov	x12, 41248
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	stp	xzr, xzr, [sp, 24]
	add	x0, sp, 40
	mov	x1, 39984
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 40960
	add	x0, x0, 264
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 32768
	str	wzr, [x0, 8468]
	b	.L2
	add	x0, sp, 40960
	add	x0, x0, 268
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 32768
	str	wzr, [x0, 8472]
	b	.L3
	add	x1, sp, 36864
	add	x1, x1, 3160
	add	x0, sp, 32768
	ldrsw	x0, [x0, 8472]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 32768
	ldr	w0, [x0, 8472]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 8472]
	add	x0, sp, 32768
	ldr	w0, [x0, 8460]
	add	x1, sp, 32768
	ldr	w1, [x1, 8472]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 8460]
	add	x1, sp, 32768
	str	w0, [x1, 8476]
	add	x0, sp, 32768
	str	wzr, [x0, 8472]
	b	.L5
	add	x0, sp, 32768
	ldrsw	x0, [x0, 8472]
	lsl	x0, x0, 2
	add	x1, sp, 36864
	add	x1, x1, 3160
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 8476]
	sdiv	w2, w0, w1
	add	x1, sp, 32768
	ldr	w1, [x1, 8476]
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	x1, sp, 32768
	str	w0, [x1, 8464]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 8464]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L15
	add	x0, sp, 32768
	ldrsw	x0, [x0, 8464]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	add	x0, sp, 32768
	ldr	w0, [x0, 8472]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 8472]
	add	x0, sp, 32768
	ldr	w0, [x0, 8460]
	add	x1, sp, 32768
	ldr	w1, [x1, 8472]
	cmp	w1, w0
	blt	.L8
	b	.L7
	nop
	add	x0, sp, 32768
	ldr	w0, [x0, 8460]
	add	x1, sp, 32768
	ldr	w1, [x1, 8472]
	cmp	w1, w0
	bne	.L9
	add	x0, sp, 32768
	ldr	w1, [x0, 8476]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L14
	add	x0, sp, 32768
	ldrsw	x1, [x0, 8476]
	add	x0, sp, 24
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 32768
	ldr	w0, [x0, 8476]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 8476]
	b	.L11
	add	x0, sp, 32768
	ldrsw	x1, [x0, 8476]
	add	x0, sp, 24
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 32768
	ldr	w0, [x0, 8468]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 8468]
	add	x0, sp, 32768
	ldr	w0, [x0, 8456]
	add	x1, sp, 32768
	ldr	w1, [x1, 8468]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 41248
	add	sp, sp, x12
	ret