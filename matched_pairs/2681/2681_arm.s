t:
r:
s:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
	mov	x2, 104
	mov	w1, 0
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	memset
	mov	x2, 104
	mov	w1, 0
	adrp	x0, r
	add	x0, x0, :lo12:r
	bl	memset
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	str	wzr, [sp, 24]
	b	.L3
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	sub	w3, w0, #97
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	str	wzr, [sp, 24]
	b	.L5
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	sub	w3, w0, #97
	adrp	x0, r
	add	x0, x0, :lo12:r
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, r
	add	x0, x0, :lo12:r
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L7
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L8
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	b	.L9
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L10
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret