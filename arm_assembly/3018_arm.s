gift:
queue:
c:
d:
n:
f:
GE:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 28]
	b	.L3
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, gift
	add	x0, x0, :lo12:gift
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L4
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, _Z3cmpPKvS0_
	add	x3, x0, :lo12:_Z3cmpPKvS0_
	mov	x2, 4
	adrp	x0, gift
	add	x0, x0, :lo12:gift
	bl	qsort
	str	wzr, [sp, 28]
	b	.L5
	str	wzr, [sp, 24]
	b	.L6
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	lsl	x1, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L7
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	add	x4, x0, x1
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, _Z3cmpPKvS0_
	add	x3, x0, :lo12:_Z3cmpPKvS0_
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L8
	adrp	x0, c
	add	x0, x0, :lo12:c
	str	wzr, [x0]
	adrp	x0, f
	add	x0, x0, :lo12:f
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L9
	str	wzr, [sp, 24]
	b	.L10
	adrp	x0, gift
	add	x0, x0, :lo12:gift
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	bge	.L27
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L13
	b	.L12
	nop
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L14
	ldr	w2, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, f
	add	x1, x1, :lo12:f
	str	w3, [x1]
	adrp	x1, queue
	add	x1, x1, :lo12:queue
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	str	wzr, [sp, 28]
	b	.L17
	ldr	w0, [sp, 28]
	bl	_Z5boxesi
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	str	wzr, [sp, 28]
	b	.L19
	mov	w1, 1
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L20
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 28]
	b	.L21
	str	wzr, [sp, 24]
	b	.L22
	adrp	x0, GE
	add	x3, x0, :lo12:GE
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	adrp	x0, d
	add	x2, x0, :lo12:d
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
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
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L29
	mov	w0, 1
	b	.L30
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L31
	mov	w0, -1
	b	.L30
	mov	w0, 0
	add	sp, sp, 32
	ret
_Z5boxesi:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	str	wzr, [sp, 28]
	b	.L33
	str	wzr, [sp, 24]
	b	.L34
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 20]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldrsw	x4, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L40
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L37
	b	.L36
	nop
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L38
	adrp	x0, GE
	add	x3, x0, :lo12:GE
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, GE
	add	x3, x0, :lo12:GE
	ldrsw	x2, [sp, 12]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, -1
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L39
	nop
	nop
	add	sp, sp, 32
	ret
_Z3dfsii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 44]
	b	.L42
	adrp	x0, GE
	add	x3, x0, :lo12:GE
	ldrsw	x2, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L43
	str	wzr, [sp, 40]
	b	.L44
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L45
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	_Z3dfsii
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L46
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L48
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w1, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret