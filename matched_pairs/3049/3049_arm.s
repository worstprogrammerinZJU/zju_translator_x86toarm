zuhe:
letter:
n:
k:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, k
	add	x1, x0, :lo12:k
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	ldrsw	x1, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	bl	getchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	bl	qsort
	mov	w0, 0
	bl	make
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
equal:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	b	.L6
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	bgt	.L7
	mov	w0, 0
	b	.L8
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	mov	w0, 1
	add	sp, sp, 32
	ret
make:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L11
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	str	wzr, [sp, 44]
	b	.L12
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 97
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 101
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 117
	bne	.L14
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L15
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L24
	ldr	w0, [sp, 36]
	cmp	w0, 1
	ble	.L24
	str	wzr, [sp, 44]
	b	.L18
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L24
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	b	.L21
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	equal
	cmp	w0, 1
	bne	.L22
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	make
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L23
	b	.L10
	nop
	ldp	x29, x30, [sp], 48
	ret
cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 30]
	ldrb	w1, [sp, 31]
	ldrb	w0, [sp, 30]
	cmp	w1, w0
	bcs	.L26
	mov	w0, -1
	b	.L27
	ldrb	w1, [sp, 31]
	ldrb	w0, [sp, 30]
	cmp	w1, w0
	bls	.L28
	mov	w0, 1
	b	.L27
	mov	w0, 0
	add	sp, sp, 32
	ret