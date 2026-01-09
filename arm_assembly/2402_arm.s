main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 9
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L3
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 24]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	sub	w0, w1, w0
	cmp	w0, 0
	bgt	.L4
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	sub	w0, w0, #1
	b	.L6
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	cmp	w0, 0
	bgt	.L8
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	b	.L8
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L9
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret