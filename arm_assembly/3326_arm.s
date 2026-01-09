n:
m:
r:
q:
student:
time:
PC:
used:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	mov	x2, 40004
	mov	w1, 0
	adrp	x0, student
	add	x0, x0, :lo12:student
	bl	memset
	mov	x2, 1761
	movk	x2, 0x6e, lsl 16
	mov	w1, 0
	adrp	x0, PC
	add	x0, x0, :lo12:PC
	bl	memset
	mov	x2, 1001
	mov	w1, 0
	adrp	x0, used
	add	x0, x0, :lo12:used
	bl	memset
	adrp	x0, r
	add	x1, x0, :lo12:r
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L3
	add	x3, sp, 24
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	sub	w0, w0, #540
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L4
	ldr	w2, [sp, 32]
	adrp	x0, used
	add	x1, x0, :lo12:used
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w2, [sp, 32]
	adrp	x0, used
	add	x1, x0, :lo12:used
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w3, [sp, 28]
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L6
	ldr	w1, [sp, 28]
	ldr	w2, [sp, 36]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L6
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L6
	ldr	w2, [sp, 32]
	adrp	x0, used
	add	x1, x0, :lo12:used
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L6
	ldr	w2, [sp, 32]
	adrp	x0, used
	add	x1, x0, :lo12:used
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	ldr	w3, [sp, 28]
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	adrp	x0, student
	add	x0, x0, :lo12:student
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 28]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 40]
	b	.L7
	ldr	w1, [sp, 28]
	adrp	x0, PC
	add	x2, x0, :lo12:PC
	sxtw	x0, w1
	ldrsw	x3, [sp, 40]
	mov	x1, 10001
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
	adrp	x0, q
	add	x1, x0, :lo12:q
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L10
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	ldr	w0, [sp, 32]
	sub	w0, w0, #540
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w0, #540
	str	w0, [sp, 40]
	b	.L11
	ldr	w1, [sp, 28]
	adrp	x0, PC
	add	x2, x0, :lo12:PC
	sxtw	x0, w1
	ldrsw	x3, [sp, 40]
	mov	x1, 10001
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L12
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L14
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L16
	mov	w0, 1
	b	.L17
	mov	w0, 0
	cmp	w0, 0
	bne	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret