cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L2
	mov	w0, 1
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, -1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	mov	x12, 8048
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4096
	add	x0, x0, 3928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	str	wzr, [sp, 8044]
	b	.L7
	add	x1, sp, 4024
	ldrsw	x0, [sp, 8044]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 8044]
	add	w0, w0, 1
	str	w0, [sp, 8044]
	ldr	w0, [sp, 8024]
	ldr	w1, [sp, 8044]
	cmp	w1, w0
	blt	.L8
	str	wzr, [sp, 8044]
	b	.L9
	add	x1, sp, 24
	ldrsw	x0, [sp, 8044]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 8044]
	add	w0, w0, 1
	str	w0, [sp, 8044]
	ldr	w0, [sp, 8024]
	ldr	w1, [sp, 8044]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 8024]
	sxtw	x1, w0
	add	x4, sp, 4024
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	ldr	w0, [sp, 8024]
	sxtw	x1, w0
	add	x4, sp, 24
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	str	wzr, [sp, 8044]
	b	.L11
	ldr	w0, [sp, 8044]
	add	w0, w0, 1
	str	w0, [sp, 8044]
	ldr	w1, [sp, 4024]
	ldrsw	x0, [sp, 8044]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L12
	ldr	w0, [sp, 8024]
	ldr	w1, [sp, 8044]
	cmp	w1, w0
	blt	.L13
	ldr	w1, [sp, 8024]
	mov	w0, -200
	mul	w0, w1, w0
	str	w0, [sp, 8032]
	b	.L14
	ldr	w1, [sp, 8044]
	mov	w0, -200
	mul	w0, w1, w0
	str	w0, [sp, 8028]
	ldr	w0, [sp, 8044]
	str	w0, [sp, 8040]
	str	wzr, [sp, 8036]
	b	.L15
	ldrsw	x0, [sp, 8036]
	lsl	x0, x0, 2
	add	x1, sp, 4024
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8040]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L16
	ldr	w0, [sp, 8028]
	add	w0, w0, 200
	str	w0, [sp, 8028]
	b	.L17
	ldrsw	x0, [sp, 8036]
	lsl	x0, x0, 2
	add	x1, sp, 4024
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8040]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L17
	ldr	w0, [sp, 8028]
	sub	w0, w0, #200
	str	w0, [sp, 8028]
	ldr	w0, [sp, 8040]
	add	w0, w0, 1
	str	w0, [sp, 8040]
	ldr	w0, [sp, 8036]
	add	w0, w0, 1
	str	w0, [sp, 8036]
	ldr	w0, [sp, 8024]
	ldr	w1, [sp, 8040]
	cmp	w1, w0
	blt	.L18
	ldr	w1, [sp, 8028]
	ldr	w0, [sp, 8032]
	cmp	w1, w0
	ble	.L19
	ldr	w0, [sp, 8028]
	str	w0, [sp, 8032]
	ldr	w0, [sp, 8044]
	add	w0, w0, 1
	str	w0, [sp, 8044]
	ldr	w0, [sp, 8024]
	ldr	w1, [sp, 8044]
	cmp	w1, w0
	blt	.L20
	ldr	w1, [sp, 8032]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 4096
	add	x0, x0, 3928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 8024]
	cmp	w0, 0
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 8048
	add	sp, sp, x12
	ret