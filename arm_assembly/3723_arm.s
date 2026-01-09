T:
n:
m:
R:
rank:
Parent:
relation:
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
	adrp	x0, relation
	add	x2, x0, :lo12:relation
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 8]
	adrp	x0, relation
	add	x3, x0, :lo12:relation
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 8]
	cmp	w2, w0
	bge	.L2
	mov	w0, 1
	b	.L3
	adrp	x0, relation
	add	x2, x0, :lo12:relation
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 8]
	adrp	x0, relation
	add	x3, x0, :lo12:relation
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 8]
	cmp	w2, w0
	ble	.L4
	mov	w0, -1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
_Z4rooti:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L6
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bge	.L7
	b	.L8
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
_Z5mergeii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z4rooti
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	_Z4rooti
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L12
	mov	w0, 1
	b	.L13
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L14
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	mov	w0, 0
	b	.L13
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
_Z7kruskalii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 44]
	ldrsw	x1, [sp, 24]
	adrp	x0, _Z3cmpPKvS0_
	add	x3, x0, :lo12:_Z3cmpPKvS0_
	mov	x2, 4
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	bl	qsort
	str	wzr, [sp, 40]
	b	.L16
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, relation
	add	x2, x0, :lo12:relation
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w3, [x0, 4]
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, relation
	add	x2, x0, :lo12:relation
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w3
	bl	_Z5mergeii
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, relation
	add	x2, x0, :lo12:relation
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, T
	add	x1, x0, :lo12:T
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L21
	adrp	x0, R
	add	x3, x0, :lo12:R
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	x2, 14464
	movk	x2, 0x1, lsl 16
	mov	w1, -1
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	bl	memset
	str	wzr, [sp, 44]
	b	.L22
	adrp	x0, rank
	add	x0, x0, :lo12:rank
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, relation
	add	x1, x1, :lo12:relation
	add	x0, x0, x1
	add	x2, x0, 8
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w2, [sp, 32]
	adrp	x0, relation
	add	x3, x0, :lo12:relation
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0]
	ldr	w1, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w2, w1, w0
	adrp	x0, relation
	add	x3, x0, :lo12:relation
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L23
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w2, w1, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	_Z7kruskalii
	str	w0, [sp, 36]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w1, w0
	mov	w0, 10000
	mul	w1, w1, w0
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret