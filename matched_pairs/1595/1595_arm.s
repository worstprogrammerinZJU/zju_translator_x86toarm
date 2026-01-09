main:
	sub	sp, sp, #720
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, 676
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 36]
	mov	w0, 3
	str	w0, [sp, 40]
	mov	w0, 5
	str	w0, [sp, 716]
	mov	w0, 3
	str	w0, [sp, 708]
	b	.L2
	mov	w0, 2
	str	w0, [sp, 712]
	b	.L3
	ldrsw	x0, [sp, 712]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 716]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 712]
	add	w0, w0, 1
	str	w0, [sp, 712]
	ldrsw	x0, [sp, 712]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 716]
	cmp	w1, w0
	bgt	.L6
	b	.L5
	nop
	ldrsw	x0, [sp, 712]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 716]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 708]
	add	w1, w0, 1
	str	w1, [sp, 708]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [sp, 716]
	str	w2, [x1, x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	str	w0, [sp, 716]
	ldr	w0, [sp, 716]
	cmp	w0, 999
	ble	.L8
	b	.L9
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	str	wzr, [sp, 716]
	ldr	w0, [sp, 708]
	sub	w0, w0, #1
	str	w0, [sp, 712]
	b	.L10
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L11
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sub	w0, w0, #1
	str	w0, [sp, 712]
	b	.L10
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	str	w0, [sp, 716]
	b	.L10
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 716]
	b	.L13
	ldr	w1, [sp, 716]
	ldr	w0, [sp, 712]
	cmp	w1, w0
	blt	.L14
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L15
	ldr	w0, [sp, 716]
	sub	w0, w0, #1
	str	w0, [sp, 716]
	ldr	w0, [sp, 24]
	lsl	w1, w0, 1
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 716]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	cmn	w0, #1
	blt	.L16
	ldr	w0, [sp, 716]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	b	.L17
	mov	w0, 0
	str	w0, [sp, 712]
	ldr	w0, [sp, 712]
	str	w0, [sp, 716]
	b	.L18
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	str	w0, [sp, 716]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 712]
	add	w0, w1, w0
	ldr	w1, [sp, 716]
	cmp	w1, w0
	bge	.L19
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L20
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 720
	ret