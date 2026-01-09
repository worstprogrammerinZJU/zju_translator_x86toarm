n:
k:
len:
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
	mov	w0, -1
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 236]
	b	.L6
	str	wzr, [sp, 232]
	b	.L7
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	strlen
	mov	w2, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldrsw	x1, [sp, 232]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 232]
	cmp	w1, w0
	blt	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, len
	add	x0, x0, :lo12:len
	bl	qsort
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sdiv	w0, w1, w0
	str	w0, [sp, 220]
	ldr	w0, [sp, 236]
	add	w1, w0, 1
	str	w1, [sp, 236]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	str	wzr, [sp, 232]
	b	.L9
	str	wzr, [sp, 228]
	str	wzr, [sp, 224]
	b	.L10
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	ldr	w0, [sp, 232]
	mul	w1, w1, w0
	ldr	w0, [sp, 228]
	add	w1, w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 224]
	add	w0, w1, w0
	str	w0, [sp, 224]
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L11
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 224]
	sdiv	w0, w1, w0
	str	w0, [sp, 224]
	str	wzr, [sp, 228]
	b	.L12
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	ldr	w0, [sp, 232]
	mul	w1, w1, w0
	ldr	w0, [sp, 228]
	add	w1, w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 224]
	add	w0, w0, 2
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 224]
	sub	w1, w0, #2
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w2, [x0]
	ldr	w0, [sp, 232]
	mul	w2, w2, w0
	ldr	w0, [sp, 228]
	add	w2, w2, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L14
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L24
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
	ldr	w1, [sp, 232]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	blt	.L17
	b	.L16
	nop
	ldr	w1, [sp, 232]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	bge	.L18
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L6
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L19
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	bne	.L22
	mov	w0, 0
	ldp	x29, x30, [sp], 240
	ret