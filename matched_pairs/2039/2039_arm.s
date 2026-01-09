main:
	sub	sp, sp, #2032
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 2016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	bl	getchar
	str	wzr, [sp, 2028]
	str	wzr, [sp, 2024]
	mov	w0, 1
	str	w0, [sp, 2020]
	b	.L3
	ldr	w1, [sp, 2024]
	ldr	w0, [sp, 2020]
	add	w0, w1, w0
	str	w0, [sp, 2024]
	ldr	w0, [sp, 2016]
	ldr	w1, [sp, 2024]
	cmp	w1, w0
	beq	.L4
	ldr	w0, [sp, 2024]
	cmn	w0, #1
	bne	.L3
	ldr	w0, [sp, 2020]
	neg	w0, w0
	str	w0, [sp, 2020]
	ldr	w1, [sp, 2024]
	ldr	w0, [sp, 2020]
	add	w0, w1, w0
	str	w0, [sp, 2024]
	ldr	w0, [sp, 2028]
	add	w0, w0, 1
	str	w0, [sp, 2028]
	bl	getchar
	and	w3, w0, 255
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2028]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 2080]
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2028]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	ldrb	w0, [x0, 2080]
	cmp	w0, 10
	bne	.L5
	str	wzr, [sp, 2024]
	b	.L6
	str	wzr, [sp, 2020]
	b	.L7
	ldrsw	x2, [sp, 2024]
	ldrsw	x1, [sp, 2020]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 2032
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	ldrb	w0, [x0, 2080]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 2020]
	add	w0, w0, 1
	str	w0, [sp, 2020]
	ldr	w1, [sp, 2020]
	ldr	w0, [sp, 2028]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 2024]
	add	w0, w0, 1
	str	w0, [sp, 2024]
	ldr	w0, [sp, 2016]
	ldr	w1, [sp, 2024]
	cmp	w1, w0
	blt	.L9
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 2016
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 2016]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2032
	ret