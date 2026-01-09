main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L3
	ldr	w1, [sp, 36]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w2, w0
	sub	w0, w0, #48
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	bne	.L4
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L5
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w2, w0
	sub	w0, w0, #48
	str	w0, [sp, 32]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 40]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 36]
	add	w0, w0, 12
	str	w0, [sp, 36]
	ldr	w2, [sp, 36]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 3
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L8
	ldr	w2, [sp, 36]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 3
	sub	w1, w2, w0
	b	.L9
	mov	w1, 24
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L10
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret