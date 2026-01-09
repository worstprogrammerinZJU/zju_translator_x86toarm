main:
	stp	x29, x30, [sp, -368]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 208
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldr	x1, [x1, 125]
	str	x1, [x0, 125]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldp	q0, q1, [x1, 96]
	stp	q0, q1, [x0, 96]
	ldp	q0, q1, [x1, 128]
	stp	q0, q1, [x0, 128]
	ldr	q0, [x1, 160]
	str	q0, [x0, 160]
	ldr	w1, [x1, 176]
	str	w1, [x0, 176]
	add	x0, sp, 352
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 352]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 364]
	b	.L2
	add	x2, sp, 344
	add	x1, sp, 200
	add	x0, sp, 348
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	str	wzr, [sp, 360]
	b	.L3
	add	x2, sp, 208
	ldrsw	x1, [sp, 360]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	add	x0, x2, x0
	add	x1, sp, 200
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 360]
	add	w0, w0, 1
	str	w0, [sp, 360]
	ldr	w0, [sp, 360]
	cmp	w0, 18
	ble	.L6
	b	.L5
	nop
	ldr	w1, [sp, 344]
	mov	w0, 365
	mul	w2, w1, w0
	ldr	w1, [sp, 360]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w1, w2, w0
	ldr	w0, [sp, 348]
	add	w0, w1, w0
	str	w0, [sp, 356]
	ldr	w0, [sp, 356]
	mov	w1, 57471
	movk	w1, 0x7e07, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 7
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 344]
	ldr	w1, [sp, 344]
	mov	w0, -260
	mul	w0, w1, w0
	ldr	w1, [sp, 356]
	add	w0, w1, w0
	str	w0, [sp, 356]
	ldr	w1, [sp, 356]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 3
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 2
	sub	w0, w1, w0
	str	w0, [sp, 360]
	ldr	w1, [sp, 356]
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 13
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 348]
	ldr	w4, [sp, 348]
	add	x2, sp, 16
	ldrsw	x1, [sp, 360]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x2, x0
	ldr	w1, [sp, 344]
	mov	w3, w1
	mov	x2, x0
	mov	w1, w4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w0, [sp, 364]
	add	w0, w0, 1
	str	w0, [sp, 364]
	ldr	w0, [sp, 352]
	ldr	w1, [sp, 364]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 368
	ret