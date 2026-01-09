n:
k:
digit:
_Z3cali:
	stp	x29, x30, [sp, -480]!
	mov	x29, sp
	str	w0, [sp, 28]
	stp	xzr, xzr, [sp, 432]
	stp	xzr, xzr, [sp, 448]
	str	xzr, [sp, 464]
	add	x0, sp, 32
	mov	x1, 400
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 476]
	ldr	w1, [sp, 476]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	str	w0, [sp, 476]
	ldr	w1, [sp, 476]
	ldr	w0, [sp, 28]
	sdiv	w3, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 432
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 432
	str	w2, [x1, x0]
	ldr	w0, [sp, 476]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 476]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 1
	beq	.L2
	ldr	w0, [sp, 476]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 476]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 476]
	b	.L3
	str	wzr, [sp, 476]
	b	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, digit
	add	x2, x0, :lo12:digit
	ldrsw	x3, [sp, 476]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	ldrsw	x0, [sp, 476]
	lsl	x0, x0, 2
	add	x2, sp, 432
	ldr	w0, [x2, x0]
	add	w3, w1, w0
	adrp	x0, digit
	add	x2, x0, :lo12:digit
	ldrsw	x4, [sp, 476]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 476]
	add	w0, w0, 1
	str	w0, [sp, 476]
	ldr	w0, [sp, 476]
	cmp	w0, 9
	ble	.L5
	nop
	nop
	ldp	x29, x30, [sp], 480
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L7
	ldr	w0, [sp, 28]
	bl	_Z3cali
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 100
	ble	.L8
	b	.L9
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w3, [x0]
	adrp	x0, digit
	add	x2, x0, :lo12:digit
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret