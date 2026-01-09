coin:
balance:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L2
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #65
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	str	wzr, [sp, 52]
	b	.L4
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #65
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	b	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L9
	mov	w0, 1
	b	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L11
	str	wzr, [sp, 136]
	b	.L12
	add	x2, sp, 88
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x4, x2, x0
	add	x2, sp, 56
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x5, x2, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 136]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x3, x0
	mov	x2, x5
	mov	x1, x4
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 2
	ble	.L13
	mov	w0, -1
	str	w0, [sp, 136]
	b	.L14
	str	wzr, [sp, 132]
	b	.L15
	mov	x2, 48
	mov	w1, 0
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	bl	memset
	adrp	x0, coin
	add	x0, x0, :lo12:coin
	ldrsw	x1, [sp, 132]
	ldr	w2, [sp, 136]
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 128]
	b	.L16
	add	x2, sp, 88
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x3, x2, x0
	add	x2, sp, 56
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x4, x2, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 128]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	balance
	cmp	w0, 0
	beq	.L30
	ldr	w0, [sp, 128]
	add	w0, w0, 1
	str	w0, [sp, 128]
	ldr	w0, [sp, 128]
	cmp	w0, 2
	ble	.L19
	b	.L18
	nop
	ldr	w0, [sp, 128]
	cmp	w0, 3
	beq	.L31
	ldr	w0, [sp, 132]
	add	w0, w0, 1
	str	w0, [sp, 132]
	ldr	w0, [sp, 132]
	cmp	w0, 11
	ble	.L22
	b	.L21
	nop
	ldr	w0, [sp, 132]
	cmp	w0, 11
	ble	.L32
	ldr	w0, [sp, 136]
	add	w0, w0, 2
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 1
	ble	.L25
	b	.L24
	nop
	ldr	w0, [sp, 132]
	add	w0, w0, 65
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 136]
	cmn	w0, #1
	bne	.L26
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	b	.L27
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 124]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L28
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret