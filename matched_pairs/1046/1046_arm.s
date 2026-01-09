color:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 44]
	b	.L2
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, color
	add	x1, x1, :lo12:color
	add	x4, x0, x1
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x0, 4
	adrp	x0, color
	add	x0, x0, :lo12:color
	add	x2, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x0, 8
	adrp	x0, color
	add	x0, x0, :lo12:color
	add	x0, x1, x0
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 15
	ble	.L3
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L4
	mov	w0, 3392
	movk	w0, 0x3, lsl 16
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	b	.L5
	ldr	w2, [sp, 28]
	adrp	x0, color
	add	x3, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0]
	sub	w2, w2, w0
	ldr	w3, [sp, 28]
	adrp	x0, color
	add	x4, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0]
	sub	w0, w3, w0
	mul	w2, w2, w0
	ldr	w3, [sp, 24]
	adrp	x0, color
	add	x4, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0, 4]
	sub	w3, w3, w0
	ldr	w4, [sp, 24]
	adrp	x0, color
	add	x5, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x5, x0
	ldr	w0, [x0, 4]
	sub	w0, w4, w0
	mul	w0, w3, w0
	add	w2, w2, w0
	ldr	w3, [sp, 20]
	adrp	x0, color
	add	x4, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0, 8]
	sub	w3, w3, w0
	ldr	w4, [sp, 20]
	adrp	x0, color
	add	x5, x0, :lo12:color
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x5, x0
	ldr	w0, [x0, 8]
	sub	w0, w4, w0
	mul	w0, w3, w0
	add	w0, w2, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 32]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 15
	ble	.L7
	ldr	w7, [sp, 28]
	ldr	w8, [sp, 24]
	ldr	w3, [sp, 20]
	adrp	x0, color
	add	x2, x0, :lo12:color
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w4, [x0]
	adrp	x0, color
	add	x2, x0, :lo12:color
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w5, [x0, 4]
	adrp	x0, color
	add	x2, x0, :lo12:color
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	mov	w6, w0
	mov	w2, w8
	mov	w1, w7
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L8
	ldr	w0, [sp, 24]
	cmn	w0, #1
	bne	.L8
	ldr	w0, [sp, 20]
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret