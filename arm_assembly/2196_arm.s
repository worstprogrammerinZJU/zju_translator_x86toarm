main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 2992
	str	w0, [sp, 28]
	b	.L2
	str	wzr, [sp, 20]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L3
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
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 20]
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
	bne	.L4
	str	wzr, [sp, 16]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L5
	ldr	w2, [sp, 24]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 2
	sub	w1, w2, w0
	ldr	w0, [sp, 16]
	add	w0, w0, w1
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	mov	w1, 43691
	movk	w1, 0x2aaa, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 1
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L13
	str	wzr, [sp, 16]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L9
	ldr	w0, [sp, 24]
	negs	w1, w0
	and	w0, w0, 15
	and	w1, w1, 15
	csneg	w0, w0, w1, mi
	ldr	w1, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w1, w0, 15
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 4
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L10
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L8
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L8
	nop
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret