Yang:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sdiv	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w0, 1
	b	.L3
	ldr	w0, [sp, 56]
	add	w19, w0, 1
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	bl	Yang
	mul	w0, w19, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 44]
	add	x1, sp, 36
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L5
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	bl	Yang
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 12
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 10000
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 19923
	movk	w1, 0x1062, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 6
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 24]
	ldr	w0, [sp, 40]
	mov	w1, 19923
	movk	w1, 0x1062, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 6
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 1000
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 5
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 25]
	ldr	w0, [sp, 40]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 26]
	ldr	w1, [sp, 40]
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
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 27]
	strb	wzr, [sp, 28]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	add	x1, sp, 24
	mov	x2, x1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 36
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret