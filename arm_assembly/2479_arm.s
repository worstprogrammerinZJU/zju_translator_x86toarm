main:
	sub	x12, sp, #458752
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 41296
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 499712
	add	x0, x0, 304
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	str	wzr, [x0, 8520]
	b	.L2
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8508]
	add	x0, sp, 499712
	add	x0, x0, 308
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L3
	add	x1, sp, 16
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	cmp	w0, w1
	bge	.L4
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	add	x1, sp, 491520
	str	w0, [x1, 8504]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	add	x1, sp, 491520
	str	w0, [x1, 8508]
	b	.L5
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8504]
	cmp	w0, w1
	bge	.L5
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	add	x1, sp, 491520
	str	w0, [x1, 8504]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L6
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L7
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	w0, w0, w1
	add	x1, sp, 491520
	str	w0, [x1, 8516]
	add	x0, sp, 491520
	ldr	w1, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8512]
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	cmp	w0, 0
	bge	.L9
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	add	x2, sp, 491520
	ldr	w2, [x2, 8512]
	str	w2, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L10
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 98304
	add	x1, x1, 1712
	str	wzr, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	sub	w0, w0, #1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	b	.L11
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	w0, w0, w1
	add	x1, sp, 491520
	str	w0, [x1, 8516]
	add	x0, sp, 491520
	ldr	w1, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8512]
	cmp	w1, w0
	ble	.L12
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8516]
	cmp	w0, 0
	bge	.L13
	add	x0, sp, 491520
	str	wzr, [x0, 8516]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 98304
	add	x1, x1, 1712
	add	x2, sp, 491520
	ldr	w2, [x2, 8512]
	str	w2, [x1, x0]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	sub	w0, w0, #1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	cmp	w0, 0
	bgt	.L14
	mov	w0, -10001
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	str	wzr, [x0, 8524]
	b	.L15
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	ldr	w1, [x1, x0]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x2, sp, 98304
	add	x2, x2, 1712
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	add	x1, sp, 491520
	ldr	w1, [x1, 8512]
	cmp	w1, w0
	bge	.L16
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x1, sp, 299008
	add	x1, x1, 1008
	ldr	w1, [x1, x0]
	add	x0, sp, 491520
	ldrsw	x0, [x0, 8524]
	lsl	x0, x0, 2
	add	x2, sp, 98304
	add	x2, x2, 1712
	ldr	w0, [x2, x0]
	add	w0, w1, w0
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8524]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8524]
	add	x0, sp, 491520
	ldr	w0, [x0, 8500]
	add	x1, sp, 491520
	ldr	w1, [x1, 8524]
	cmp	w1, w0
	blt	.L17
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8508]
	cmp	w1, w0
	bne	.L18
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	add	x0, sp, 491520
	ldr	w0, [x0, 8504]
	add	w0, w1, w0
	add	x1, sp, 491520
	str	w0, [x1, 8512]
	add	x0, sp, 491520
	ldr	w1, [x0, 8512]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 491520
	ldr	w0, [x0, 8520]
	add	w0, w0, 1
	add	x1, sp, 491520
	str	w0, [x1, 8520]
	add	x0, sp, 491520
	ldr	w0, [x0, 8496]
	add	x1, sp, 491520
	ldr	w1, [x1, 8520]
	cmp	w1, w0
	blt	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 336
	add	sp, sp, 499712
	ret