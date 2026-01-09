N:
K:
cow:
rank:
_Z3cmpPKvS0_:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	adrp	x0, cow
	add	x1, x0, :lo12:cow
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, cow
	add	x2, x0, :lo12:cow
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L2
	mov	w0, -1
	b	.L3
	adrp	x0, cow
	add	x1, x0, :lo12:cow
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, cow
	add	x2, x0, :lo12:cow
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L4
	mov	w0, 1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, K
	add	x2, x0, :lo12:K
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L6
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	add	x3, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, x0, 4
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, _Z3cmpPKvS0_
	add	x3, x0, :lo12:_Z3cmpPKvS0_
	mov	x2, 4
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	bl	qsort
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L8
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, cow
	add	x1, x0, :lo12:cow
	sxtw	x0, w2
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x2, [sp, 24]
	ldr	w3, [x0, x2, lsl 2]
	adrp	x0, cow
	add	x2, x0, :lo12:cow
	sxtw	x0, w3
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L10
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret