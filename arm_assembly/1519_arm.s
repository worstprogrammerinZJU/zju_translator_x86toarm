main:
	mov	x12, 10032
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 10028]
	str	wzr, [sp, 10024]
	b	.L3
	ldr	w0, [sp, 10024]
	add	w1, w0, 1
	str	w1, [sp, 10024]
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 10028]
	add	w0, w1, w0
	str	w0, [sp, 10028]
	ldrsw	x0, [sp, 10024]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 10028]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 3
	add	w0, w0, w2
	sub	w0, w1, w0
	str	w0, [sp, 10028]
	ldr	w0, [sp, 10028]
	cmp	w0, 0
	bne	.L5
	mov	w0, 9
	str	w0, [sp, 10028]
	ldr	w1, [sp, 10028]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrb	w0, [sp, 24]
	cmp	w0, 48
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 10032
	add	sp, sp, x12
	ret