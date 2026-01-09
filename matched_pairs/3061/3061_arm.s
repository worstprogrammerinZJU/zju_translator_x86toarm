n:
S:
sum:
min:
sen:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, S
	add	x2, x0, :lo12:S
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L3
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 1
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 24]
	ldrsh	w0, [x0, x1, lsl 1]
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L4
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L6
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L7
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L6
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	wzr, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
	b	.L8
	ldr	w0, [sp, 20]
	add	w1, w0, 1
	str	w1, [sp, 20]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w0, [x1, x0, lsl 1]
	mov	w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L10
	b	.L11
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w1, [x1, x0, lsl 1]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	sub	w1, w0, w1
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	ldrsw	x2, [sp, 24]
	ldrsh	w1, [x1, x2, lsl 1]
	sub	w1, w0, w1
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L13
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w1, [x1, x0, lsl 1]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	sub	w1, w0, w1
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L9
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret