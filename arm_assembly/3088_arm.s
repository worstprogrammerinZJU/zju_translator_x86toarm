jc:
g:
f:
zuhe:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	ldrsw	x1, [sp, 8]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	ldrsw	x2, [sp, 12]
	ldr	w0, [x0, x2, lsl 2]
	sdiv	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w2, w2, w0
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	sdiv	w0, w1, w0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L4
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x1, [sp, 44]
	str	wzr, [x0, x1, lsl 2]
	str	wzr, [sp, 40]
	b	.L5
	ldr	w1, [sp, 40]
	adrp	x0, g
	add	x0, x0, :lo12:g
	sxtw	x1, w1
	ldr	w19, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	bl	zuhe
	mul	w1, w19, w0
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L6
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 11
	ble	.L7
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L8
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x1, [sp, 44]
	str	wzr, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L9
	ldr	w1, [sp, 40]
	adrp	x0, g
	add	x0, x0, :lo12:g
	sxtw	x1, w1
	ldr	w19, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	bl	zuhe
	mul	w1, w19, w0
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 11
	ble	.L11
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L12
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 40]
	adrp	x0, f
	add	x0, x0, :lo12:f
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w3, w0
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret