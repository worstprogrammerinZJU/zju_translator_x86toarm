flag1:
n:
flag2:
sign:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	ldr	w0, [sp, 8]
	sub	w3, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	sub	w5, w1, #1
	ldr	w1, [sp, 8]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x4, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 8]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	add	w1, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 8]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x4, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	ldr	w0, [sp, 8]
	add	w3, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	add	w5, w1, 1
	ldr	w1, [sp, 8]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	nop
	add	sp, sp, 16
	ret
copy:
	sub	sp, sp, #16
	str	wzr, [sp, 12]
	b	.L3
	str	wzr, [sp, 8]
	b	.L4
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w3, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 24
	ble	.L5
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 24
	ble	.L6
	nop
	nop
	add	sp, sp, 16
	ret
search:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L8
	str	wzr, [sp, 24]
	b	.L9
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	sign
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 24
	ble	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 24
	ble	.L12
	bl	copy
	mov	x2, 2500
	mov	w1, 0
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	bl	memset
	nop
	ldp	x29, x30, [sp], 32
	ret
solve:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w3, [x0]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	sign
	bl	copy
	mov	x2, 2500
	mov	w1, 0
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	bl	memset
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L14
	bl	search
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L15
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w3, [x0]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L17
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	bl	solve
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret