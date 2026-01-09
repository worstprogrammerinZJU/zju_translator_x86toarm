main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	add	x0, sp, 160
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 168]
	str	wzr, [sp, 164]
	str	wzr, [sp, 172]
	b	.L3
	add	x1, sp, 112
	ldrsw	x0, [sp, 172]
	lsl	x0, x0, 2
	add	x5, x1, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 172]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x2, x2, x0
	add	x1, sp, 152
	add	x0, sp, 156
	mov	x4, x2
	mov	x3, x1
	mov	x2, x0
	mov	x1, x5
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 172]
	lsl	x0, x0, 2
	add	x1, sp, 112
	ldr	w1, [x1, x0]
	ldr	w2, [sp, 156]
	ldr	w0, [sp, 152]
	mul	w0, w2, w0
	mul	w2, w1, w0
	ldrsw	x0, [sp, 172]
	lsl	x0, x0, 2
	add	x1, sp, 112
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 172]
	lsl	x0, x0, 2
	add	x1, sp, 112
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 168]
	lsl	x0, x0, 2
	add	x2, sp, 112
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 172]
	str	w0, [sp, 168]
	b	.L5
	ldrsw	x0, [sp, 172]
	lsl	x0, x0, 2
	add	x1, sp, 112
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 164]
	lsl	x0, x0, 2
	add	x2, sp, 112
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 172]
	str	w0, [sp, 164]
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
	ldr	w0, [sp, 160]
	ldr	w1, [sp, 172]
	cmp	w1, w0
	blt	.L6
	add	x2, sp, 24
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x3, x2, x0
	add	x2, sp, 24
	ldrsw	x1, [sp, 164]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x2, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 160
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 160]
	cmn	w0, #1
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 176
	ret