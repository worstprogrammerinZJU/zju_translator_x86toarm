main:
	sub	x12, sp, #393216
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 6896
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 48
	mov	x1, 6824
	movk	x1, 0x6, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 393216
	str	xzr, [x0, 6880]
	add	x0, sp, 393216
	str	xzr, [x0, 6872]
	add	x1, sp, 32
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 393216
	str	xzr, [x0, 6888]
	b	.L2
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L3
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	sub	x0, x0, #1
	add	x1, sp, 393216
	str	x0, [x1, 6880]
	add	x0, sp, 393216
	ldr	x0, [x0, 6872]
	add	x0, x0, 1
	add	x1, sp, 393216
	str	x0, [x1, 6872]
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	lsl	x0, x0, 3
	add	x1, sp, 48
	ldr	x1, [x1, x0]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bgt	.L4
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	lsl	x0, x0, 3
	add	x1, sp, 48
	ldr	x1, [x1, x0]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bge	.L5
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	add	x0, x0, 1
	add	x1, sp, 393216
	str	x0, [x1, 6880]
	ldr	x2, [sp, 16]
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	lsl	x0, x0, 3
	add	x1, sp, 48
	str	x2, [x1, x0]
	add	x0, sp, 393216
	ldr	x0, [x0, 6888]
	add	x0, x0, 1
	add	x1, sp, 393216
	str	x0, [x1, 6888]
	ldr	x0, [sp, 40]
	add	x1, sp, 393216
	ldr	x1, [x1, 6888]
	cmp	x1, x0
	blt	.L6
	str	xzr, [sp, 16]
	b	.L7
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	sub	x0, x0, #1
	add	x1, sp, 393216
	str	x0, [x1, 6880]
	add	x0, sp, 393216
	ldr	x0, [x0, 6872]
	add	x0, x0, 1
	add	x1, sp, 393216
	str	x0, [x1, 6872]
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	lsl	x0, x0, 3
	add	x1, sp, 48
	ldr	x1, [x1, x0]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	ble	.L8
	add	x0, sp, 393216
	ldr	x0, [x0, 6880]
	cmn	x0, #1
	bne	.L9
	add	x0, sp, 393216
	ldr	x1, [x0, 6872]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2800
	add	sp, sp, 397312
	ret