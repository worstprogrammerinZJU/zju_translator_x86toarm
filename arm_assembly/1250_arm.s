i:
j:
k:
n:
m:
l:
p:
check:
s:
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	b	.L2
	mov	x2, 26
	mov	w1, 0
	adrp	x0, p
	add	x0, x0, :lo12:p
	bl	memset
	mov	x2, 26
	mov	w1, 0
	adrp	x0, check
	add	x0, x0, :lo12:check
	bl	memset
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strlen
	mov	w1, w0
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	wzr, [x0]
	b	.L3
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w2, [x0]
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	sub	w1, w0, #65
	adrp	x0, l
	add	x0, x0, :lo12:l
	str	w1, [x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, p
	add	x1, x0, :lo12:p
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L4
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, p
	add	x1, x0, :lo12:p
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, check
	add	x1, x0, :lo12:check
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	b	.L6
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	b	.L6
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, p
	add	x1, x0, :lo12:p
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L7
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	b	.L6
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w2, [x0]
	adrp	x0, check
	add	x1, x0, :lo12:check
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L8
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L9
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret