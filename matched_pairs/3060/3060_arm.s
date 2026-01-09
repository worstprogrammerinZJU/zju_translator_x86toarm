same:
main:
	mov	x12, 8064
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 8060]
	b	.L2
	add	x0, sp, 4048
	mov	x2, 4000
	mov	w1, 0
	bl	memset
	add	x0, sp, 48
	mov	x2, 4000
	mov	w1, 0
	bl	memset
	mov	x2, 2304
	movk	x2, 0x3d, lsl 16
	mov	w1, 0
	adrp	x0, same
	add	x0, x0, :lo12:same
	bl	memset
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 8056]
	b	.L3
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 44]
	mov	w0, 51712
	movk	w0, 0x3b9a, lsl 16
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 40]
	mov	w0, 51712
	movk	w0, 0x3b9a, lsl 16
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w5, [sp, 44]
	ldr	w4, [sp, 40]
	adrp	x0, same
	add	x2, x0, :lo12:same
	sxtw	x3, w4
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	add	w3, w0, 1
	adrp	x0, same
	add	x2, x0, :lo12:same
	sxtw	x4, w4
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w3, [sp, 44]
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 4048
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 4048
	str	w2, [x1, x0]
	ldr	w3, [sp, 40]
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	w2, [x1, x0]
	ldr	w0, [sp, 8056]
	add	w0, w0, 1
	str	w0, [sp, 8056]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 8056]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 32]
	str	w0, [sp, 8048]
	str	wzr, [sp, 8056]
	b	.L5
	str	wzr, [sp, 8052]
	b	.L6
	ldrsw	x0, [sp, 8056]
	lsl	x0, x0, 2
	add	x1, sp, 4048
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8052]
	lsl	x0, x0, 2
	add	x2, sp, 48
	ldr	w0, [x2, x0]
	add	w2, w1, w0
	adrp	x0, same
	add	x3, x0, :lo12:same
	ldrsw	x4, [sp, 8052]
	ldrsw	x1, [sp, 8056]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w2, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 8048]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 44]
	str	w0, [sp, 8048]
	ldr	w0, [sp, 8052]
	add	w0, w0, 1
	str	w0, [sp, 8052]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 8052]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 8056]
	add	w0, w0, 1
	str	w0, [sp, 8056]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 8056]
	cmp	w1, w0
	blt	.L9
	ldr	w1, [sp, 8048]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 8060]
	add	w0, w0, 1
	str	w0, [sp, 8060]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 8060]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 8064
	add	sp, sp, x12
	ret