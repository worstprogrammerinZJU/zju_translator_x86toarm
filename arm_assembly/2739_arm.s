main:
	mov	x12, 4960
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 4916
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 3
	str	w0, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 4948]
	mov	w0, 5
	str	w0, [sp, 4956]
	b	.L2
	mov	w0, 1
	str	w0, [sp, 4952]
	b	.L3
	ldrsw	x0, [sp, 4952]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4956]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L22
	ldr	w0, [sp, 4952]
	add	w0, w0, 1
	str	w0, [sp, 4952]
	ldr	w1, [sp, 4952]
	ldr	w0, [sp, 4948]
	cmp	w1, w0
	blt	.L6
	b	.L5
	nop
	ldr	w1, [sp, 4952]
	ldr	w0, [sp, 4948]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 4948]
	add	w1, w0, 1
	str	w1, [sp, 4948]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 4956]
	str	w2, [x1, x0]
	ldr	w0, [sp, 4956]
	add	w0, w0, 2
	str	w0, [sp, 4956]
	ldr	w1, [sp, 4956]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L9
	str	wzr, [sp, 4944]
	str	wzr, [sp, 4956]
	str	wzr, [sp, 4948]
	str	wzr, [sp, 4952]
	b	.L10
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	add	w0, w1, w0
	str	w0, [sp, 4948]
	ldr	w0, [sp, 4956]
	add	w0, w0, 1
	str	w0, [sp, 4956]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	blt	.L11
	b	.L12
	ldr	w0, [sp, 4952]
	add	w1, w0, 1
	str	w1, [sp, 4952]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	sub	w0, w1, w0
	str	w0, [sp, 4948]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bne	.L15
	ldr	w0, [sp, 4944]
	add	w0, w0, 1
	str	w0, [sp, 4944]
	b	.L15
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	add	w0, w1, w0
	str	w0, [sp, 4948]
	b	.L16
	ldr	w0, [sp, 4952]
	add	w1, w0, 1
	str	w1, [sp, 4952]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4948]
	sub	w0, w1, w0
	str	w0, [sp, 4948]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bgt	.L17
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 4948]
	cmp	w1, w0
	bne	.L18
	ldr	w0, [sp, 4944]
	add	w0, w0, 1
	str	w0, [sp, 4944]
	ldr	w0, [sp, 4956]
	add	w0, w0, 1
	str	w0, [sp, 4956]
	ldrsw	x0, [sp, 4956]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L19
	ldr	w1, [sp, 4944]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 4960
	add	sp, sp, x12
	ret