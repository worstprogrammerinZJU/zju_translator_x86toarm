str:
ing:
n:
c:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 44]
	ldrb	w2, [x1, x0]
	adrp	x0, ing
	add	x1, x0, :lo12:ing
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, ing
	add	x1, x0, :lo12:ing
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w19, [x0]
	bl	LCS
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
LCS:
	sub	sp, sp, #16
	mov	w0, 1
	str	w0, [sp, 12]
	b	.L6
	mov	w0, 1
	str	w0, [sp, 8]
	b	.L7
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 8]
	sub	w3, w0, #1
	adrp	x0, ing
	add	x2, x0, :lo12:ing
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w4, w0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	mov	w2, w4
	strh	w2, [x0, x1, lsl 1]
	b	.L9
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	ldr	w1, [sp, 12]
	sub	w3, w1, #1
	adrp	x1, c
	add	x1, x1, :lo12:c
	ldrsw	x2, [sp, 8]
	sxtw	x4, w3
	mov	x3, 5001
	mul	x3, x4, x3
	add	x2, x3, x2
	ldrsh	w1, [x1, x2, lsl 1]
	mov	w2, w1
	sxth	w1, w2
	cmp	w1, w0
	csel	w0, w2, w0, gt
	sxth	w4, w0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	mov	w2, w4
	strh	w2, [x0, x1, lsl 1]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	ble	.L11
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	add	sp, sp, 16
	ret