main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 36]
	b	.L3
	ldr	w1, [sp, 36]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 4
	ble	.L4
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	str	w0, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 40]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 28]
	ldr	w2, [sp, 44]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret