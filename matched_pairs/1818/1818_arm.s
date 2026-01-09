k:
n:
p:
f:
find:
	sub	sp, sp, #48
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 36]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w1, [sp, 12]
	str	w1, [x0]
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 12]
	mov	w2, 1
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L3
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	b	.L4
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L6
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bgt	.L7
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	b	.L10
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	mov	w2, 1
	strb	w2, [x1, x0]
	mov	w1, 1
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
	add	sp, sp, 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L13
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	bl	find
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 20]
	str	w0, [sp, 28]
	b	.L15
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x2, x0
	mov	w1, 0
	adrp	x0, f
	add	x0, x0, :lo12:f
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bgt	.L16
	b	.L17
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x2, x0
	mov	w1, 0
	adrp	x0, f
	add	x0, x0, :lo12:f
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	bl	find
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret