min:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, le
	add	sp, sp, 16
	ret
maxNumberOfBalloons:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L4
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 98
	bne	.L5
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L6
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 97
	bne	.L7
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L6
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 108
	bne	.L8
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L6
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 111
	bne	.L9
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	b	.L6
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 110
	bne	.L6
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 52]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 48]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	bl	min
	mov	w1, w0
	ldr	w0, [sp, 52]
	bl	min
	mov	w1, w0
	ldr	w0, [sp, 56]
	bl	min
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	min
	ldp	x29, x30, [sp], 64
	ret