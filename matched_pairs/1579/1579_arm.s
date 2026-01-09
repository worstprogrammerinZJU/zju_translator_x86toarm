main:
	mov	x12, 37088
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, 37044
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 36]
	b	.L2
	str	wzr, [sp, 32]
	b	.L3
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	sxtw	x2, w1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	sxtw	x2, w1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	sxtw	x1, w1
	sxtw	x2, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x2
	lsl	x1, x1, 3
	sub	x1, x1, x2
	lsl	x2, x1, 6
	sub	x2, x2, x1
	lsl	x1, x2, 2
	mov	x2, x1
	add	x0, x0, x2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 20
	ble	.L4
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 20
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L6
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L7
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L8
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L9
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L9
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x3, w0
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w3, [x1, x0]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w2, w0, #1
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x4, w0
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w3, w3, w0
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w2, [sp, 28]
	sxtw	x4, w2
	sxtw	x1, w1
	sxtw	x2, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 32]
	ldr	w4, [sp, 28]
	sub	w3, w3, w0
	sxtw	x4, w4
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w3, [x1, x0]
	b	.L10
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	ldr	w2, [sp, 28]
	sxtw	x3, w2
	sxtw	x1, w1
	sxtw	x2, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w3, [x1, x0]
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w2, [sp, 28]
	sxtw	x4, w2
	sxtw	x1, w1
	sxtw	x2, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w3, w3, w0
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x4, w0
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w3, w3, w0
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	sub	w2, w0, #1
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x4, w0
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 32]
	ldr	w4, [sp, 28]
	sub	w3, w3, w0
	sxtw	x4, w4
	sxtw	x1, w1
	sxtw	x2, w2
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w3, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 20
	ble	.L11
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 20
	ble	.L12
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 20
	ble	.L13
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L14
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L15
	ldr	w0, [sp, 32]
	cmp	w0, 0
	ble	.L15
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L16
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	ldr	w2, [sp, 28]
	mov	w3, w2
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L17
	ldr	w0, [sp, 36]
	cmp	w0, 20
	bgt	.L18
	ldr	w0, [sp, 32]
	cmp	w0, 20
	bgt	.L18
	ldr	w0, [sp, 28]
	cmp	w0, 20
	ble	.L19
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	ldr	w2, [sp, 28]
	add	x3, sp, 32768
	ldr	w3, [x3, 4312]
	mov	w4, w3
	mov	w3, w2
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L17
	ldr	w5, [sp, 36]
	ldr	w6, [sp, 32]
	ldr	w7, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	ldr	w2, [sp, 28]
	sxtw	x3, w2
	sxtw	x1, w1
	sxtw	x2, w0
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 6
	sub	x1, x1, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	add	x0, x1, x0
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	mov	w4, w0
	mov	w3, w7
	mov	w2, w6
	mov	w1, w5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	cmn	w0, #1
	bne	.L20
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L20
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 37088
	add	sp, sp, x12
	ret