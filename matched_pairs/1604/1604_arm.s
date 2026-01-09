main:
	mov	x12, 40032
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, 40000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	ldr	w3, [sp, 28]
	mul	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	b	.L3
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w3, [sp, 28]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
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
	cmp	w1, 0
	beq	.L4
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w3, [sp, 28]
	mov	w0, 46473
	movk	w0, 0x14f8, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 13
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 34464
	movk	w2, 0x1, lsl 16
	mul	w0, w0, w2
	sub	w0, w1, w0
	sxtw	x1, w3
	lsl	x1, x1, 2
	add	x2, sp, 32
	str	w0, [x2, x1]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L5
	b	.L6
	ldr	w3, [sp, 28]
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
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
	mov	w2, w1
	mov	w1, w3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 40032
	add	sp, sp, x12
	ret