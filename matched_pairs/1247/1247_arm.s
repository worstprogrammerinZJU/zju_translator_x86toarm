main:
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 148]
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L3
	add	x1, sp, 16
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 148]
	add	w0, w1, w0
	str	w0, [sp, 148]
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 152]
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L5
	ldrsw	x0, [sp, 156]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 152]
	add	w0, w1, w0
	str	w0, [sp, 152]
	ldr	w0, [sp, 152]
	lsl	w0, w0, 1
	ldr	w1, [sp, 148]
	cmp	w1, w0
	beq	.L12
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L8
	b	.L7
	nop
	ldr	w0, [sp, 144]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	bgt	.L9
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 156]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 144
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 144]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	ret