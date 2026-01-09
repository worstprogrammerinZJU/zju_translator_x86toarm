main:
	sub	sp, sp, #832
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 800
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	mov	w0, 4
	str	w0, [sp, 32]
	mov	w0, 6
	str	w0, [sp, 36]
	mov	w0, 4
	str	w0, [sp, 828]
	b	.L2
	ldr	w0, [sp, 828]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 828]
	sub	w0, w0, #3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 828]
	sub	w0, w0, #4
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	mov	w0, 60437
	movk	w0, 0x82b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 6
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 2005
	mul	w0, w0, w2
	sub	w0, w1, w0
	ldrsw	x1, [sp, 828]
	lsl	x1, x1, 2
	add	x2, sp, 24
	str	w0, [x2, x1]
	ldr	w0, [sp, 828]
	add	w0, w0, 1
	str	w0, [sp, 828]
	ldr	w0, [sp, 828]
	cmp	w0, 199
	ble	.L3
	b	.L4
	ldr	w0, [sp, 824]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 6
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 200
	mul	w1, w1, w2
	sub	w1, w0, w1
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 824
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 832
	ret