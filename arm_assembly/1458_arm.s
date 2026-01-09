s:
t:
c:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [sp, 16]
	b	.L2
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strlen
	mov	w19, w0
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	strlen
	mov	w1, w0
	mov	w0, w19
	bl	LCS
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
LCS:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	x2, 30532
	movk	x2, 0x2, lsl 16
	mov	w1, 0
	adrp	x0, c
	add	x0, x0, :lo12:c
	bl	memset
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L7
	ldr	w0, [sp, 44]
	sub	w2, w0, #1
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 40]
	sub	w3, w0, #1
	adrp	x0, t
	add	x2, x0, :lo12:t
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 44]
	sub	w2, w0, #1
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 201
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	b	.L9
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	ldrsw	x3, [sp, 44]
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	sub	w3, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x2, [sp, 40]
	sxtw	x4, w3
	mov	x3, 201
	mul	x3, x4, x3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 201
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L11
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 24]
	ldrsw	x3, [sp, 28]
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	ldp	x29, x30, [sp], 48
	ret