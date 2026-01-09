main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 156]
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L3
	ldr	w0, [sp, 152]
	add	w2, w0, 1
	ldrsw	x0, [sp, 152]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	blt	.L4
	mov	w0, 1
	str	w0, [sp, 136]
	mov	w0, 1
	str	w0, [sp, 144]
	ldr	w0, [sp, 16]
	str	w0, [sp, 140]
	mov	w0, 1
	str	w0, [sp, 148]
	b	.L5
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L6
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 144]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 144]
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 140]
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w1, [sp, 152]
	ldr	w0, [sp, 148]
	cmp	w1, w0
	ble	.L7
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w2, [sp, 148]
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 144]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 144]
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 148]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	str	w0, [sp, 152]
	b	.L9
	ldrsw	x0, [sp, 152]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 152]
	cmp	w1, w0
	ble	.L10
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	ret