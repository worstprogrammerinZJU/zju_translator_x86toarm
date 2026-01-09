main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L3
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L4
	add	x1, sp, 32
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 4044]
	b	.L6
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	b	.L7
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bgt	.L21
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4036]
	cmp	w1, w0
	ble	.L22
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4036]
	b	.L9
	nop
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L12
	b	.L11
	nop
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L15
	b	.L14
	nop
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	bge	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L17
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L18
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret