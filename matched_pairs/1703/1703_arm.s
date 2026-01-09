num:
n:
N:
diff:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	adrp	x1, N
	add	x1, x1, :lo12:N
	ldr	w1, [x1]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	sp, sp, 16
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L4
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L5
	b	.L6
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 12]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	str	w0, [sp, 12]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L10
	add	x0, sp, 40
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, N
	add	x0, x0, :lo12:N
	str	w1, [x0]
	str	wzr, [sp, 60]
	b	.L11
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 60]
	ldr	w2, [sp, 60]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 60]
	b	.L13
	bl	getchar
	add	x2, sp, 44
	add	x1, sp, 48
	add	x0, sp, 35
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldrb	w0, [sp, 35]
	cmp	w0, 65
	bne	.L14
	ldr	w0, [sp, 48]
	bl	root
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 52]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 56]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 52]
	sdiv	w3, w0, w1
	mul	w1, w3, w1
	sub	w0, w0, w1
	cmp	w2, w0
	beq	.L15
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L16
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L17
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L16
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	b	.L16
	ldr	w0, [sp, 48]
	bl	diff
	bl	root
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 52]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 56]
	ldr	w2, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	bl	diff
	mov	w19, w0
	ldr	w0, [sp, 52]
	bl	diff
	mov	w2, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret