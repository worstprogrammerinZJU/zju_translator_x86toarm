make:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w2, [sp, 12]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L2
	mov	w0, 9
	b	.L3
	ldr	w2, [sp, 12]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 3
	add	w1, w1, w0
	sub	w0, w2, w1
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L5
	str	wzr, [sp, 40]
	b	.L6
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 28]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L8
	ldr	w1, [sp, 36]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret