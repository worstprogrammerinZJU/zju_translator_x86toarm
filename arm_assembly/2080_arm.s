leap:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L2
	ldr	w1, [sp, 12]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L3
	ldr	w1, [sp, 12]
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 7
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 400
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L2
	mov	w0, 1
	b	.L4
	mov	w0, 0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -336]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 272
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 224
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 112
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	q0, [x1, 89]
	str	q0, [x0, 89]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	add	x0, sp, 320
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	b	.L6
	ldr	w0, [sp, 320]
	mov	w1, 9363
	movk	w1, 0x9249, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 2
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 3
	sub	w1, w1, w2
	sub	w0, w0, w1
	str	w0, [sp, 324]
	mov	w0, 2000
	str	w0, [sp, 332]
	b	.L7
	ldr	w0, [sp, 332]
	bl	leap
	add	w0, w0, 365
	ldr	w1, [sp, 320]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
	ldr	w0, [sp, 332]
	bl	leap
	add	w1, w0, 364
	ldr	w0, [sp, 320]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 320]
	add	w0, w0, 1
	str	w0, [sp, 320]
	ldr	w0, [sp, 332]
	bl	leap
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	str	w0, [sp, 328]
	b	.L10
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x1, sp, 224
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	bge	.L22
	ldr	w1, [sp, 320]
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x2, sp, 224
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
	ldr	w0, [sp, 328]
	cmp	w0, 11
	ble	.L14
	b	.L15
	mov	w0, 1
	str	w0, [sp, 328]
	b	.L16
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x1, sp, 272
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	bge	.L23
	ldr	w1, [sp, 320]
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x2, sp, 272
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 320]
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
	ldr	w0, [sp, 328]
	cmp	w0, 11
	ble	.L19
	b	.L15
	nop
	b	.L15
	nop
	add	x2, sp, 16
	ldrsw	x1, [sp, 328]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x5, x2, x0
	ldr	w0, [sp, 320]
	add	x2, sp, 16
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x3, x2, x0
	add	x2, sp, 112
	ldrsw	x1, [sp, 324]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x2, x0
	mov	x4, x0
	mov	x2, x5
	ldr	w1, [sp, 332]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	add	x0, sp, 320
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldr	w0, [sp, 320]
	cmn	w0, #1
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp], 336
	ret