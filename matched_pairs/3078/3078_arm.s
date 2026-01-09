s:
ans:
pos:
sign:
q:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L2
	mov	x2, 120
	mov	w1, 0
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	bl	memset
	mov	x2, 120
	mov	w1, 0
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	bl	memset
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L3
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 36]
	b	.L5
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 20]
	ldr	w2, [sp, 16]
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 16]
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L7
	adrp	x0, sign
	add	x0, x0, :lo12:sign
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	adrp	x1, q
	add	x1, x1, :lo12:q
	sxtw	x0, w0
	ldr	w2, [sp, 36]
	str	w2, [x1, x0, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L9
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L10
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	adrp	x1, q
	add	x1, x1, :lo12:q
	sxtw	x0, w0
	ldr	w2, [x1, x0, lsl 2]
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L12
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L13
	adrp	x0, pos
	add	x0, x0, :lo12:pos
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L14
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L15
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L16
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret