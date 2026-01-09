main:
	mov	x12, 15056
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	str	wzr, [sp, 15052]
	add	x0, sp, 12288
	add	x0, x0, 2752
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 8192
	add	x0, x0, 3840
	mov	x1, 3001
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 24
	mov	x1, 12004
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 15048]
	b	.L2
	ldrsw	x0, [sp, 15048]
	add	x1, sp, 8192
	add	x1, x1, 3840
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 15048]
	lsl	w0, w0, 1
	str	w0, [sp, 15044]
	b	.L4
	ldrsw	x0, [sp, 15044]
	add	x1, sp, 8192
	add	x1, x1, 3840
	mov	w2, 1
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 15044]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 15044]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w1, [sp, 15044]
	ldr	w0, [sp, 15048]
	add	w0, w1, w0
	str	w0, [sp, 15044]
	ldr	w0, [sp, 15040]
	ldr	w1, [sp, 15044]
	cmp	w1, w0
	ble	.L5
	ldrsw	x0, [sp, 15048]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 2
	bne	.L6
	ldr	w0, [sp, 15052]
	add	w0, w0, 1
	str	w0, [sp, 15052]
	ldr	w0, [sp, 15048]
	add	w0, w0, 1
	str	w0, [sp, 15048]
	ldr	w0, [sp, 15040]
	ldr	w1, [sp, 15048]
	cmp	w1, w0
	ble	.L7
	ldr	w1, [sp, 15052]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 15056
	add	sp, sp, x12
	ret