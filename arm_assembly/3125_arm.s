queue:
print:
_Z4findi:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L2
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L7
	add	x1, sp, 20
	add	x0, sp, 16
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L8
	ldrsw	x0, [sp, 40]
	lsl	x1, x0, 2
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, print
	add	x1, x0, :lo12:print
	ldrsw	x0, [sp, 40]
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	ldr	w2, [sp, 20]
	adrp	x0, print
	add	x1, x0, :lo12:print
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w1, [sp, 20]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	b	.L10
	ldr	w0, [sp, 16]
	str	w0, [sp, 40]
	b	.L11
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 40]
	sub	w1, w1, w0
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 40]
	sub	w2, w1, w0
	adrp	x0, print
	add	x1, x0, :lo12:print
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	adrp	x0, print
	add	x1, x0, :lo12:print
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 40]
	b	.L13
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	add	w1, w0, 1
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	add	w2, w0, 1
	adrp	x0, print
	add	x1, x0, :lo12:print
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	adrp	x0, print
	add	x1, x0, :lo12:print
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 16]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 16]
	bl	_Z4findi
	str	w0, [sp, 28]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	str	wzr, [sp, 40]
	b	.L16
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	adrp	x0, print
	add	x1, x0, :lo12:print
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L22
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L19
	b	.L18
	nop
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L20
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret