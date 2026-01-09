n:
candy:
round:
	sub	sp, sp, #16
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	asr	w0, w0, 1
	str	w0, [sp, 8]
	str	wzr, [sp, 12]
	b	.L2
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 8]
	add	w2, w1, w0
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 4]
	str	w0, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L4
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldr	w0, [x0]
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 12]
	b	.L5
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	beq	.L6
	mov	w0, 0
	b	.L7
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L8
	mov	w0, 1
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L10
	str	wzr, [sp, 28]
	b	.L11
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L13
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	bl	round
	cmp	w0, 0
	beq	.L14
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldr	w0, [x0]
	mov	w2, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret