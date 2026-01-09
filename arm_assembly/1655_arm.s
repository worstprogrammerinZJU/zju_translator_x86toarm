n:
balance:
Node:
_Z3calii:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 60]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 56]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	b	.L2
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L3
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3calii
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 40]
	str	w0, [sp, 60]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 56]
	b	.L5
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L6
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 44]
	b	.L8
	ldr	w0, [sp, 60]
	adrp	x1, balance
	add	x1, x1, :lo12:balance
	ldrsw	x2, [sp, 24]
	str	w0, [x1, x2, lsl 2]
	ldr	w0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L11
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L12
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	wzr, [x0]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	xzr, [x0, 8]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L13
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L14
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	w1, [sp, 20]
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
	ldr	w2, [sp, 24]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
	ldr	w2, [sp, 24]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	str	x1, [x0, 8]
	b	.L16
	ldr	w2, [sp, 24]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	b	.L17
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L18
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	str	x1, [x0, 8]
	ldr	w3, [sp, 24]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, Node
	add	x2, x0, :lo12:Node
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
	ldr	w2, [sp, 20]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L19
	ldr	w2, [sp, 20]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	str	x1, [x0, 8]
	b	.L20
	ldr	w2, [sp, 20]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	b	.L21
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L22
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	str	x1, [x0, 8]
	ldr	w3, [sp, 20]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, Node
	add	x2, x0, :lo12:Node
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	str	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bgt	.L23
	mov	w1, 1
	mov	w0, 0
	bl	_Z3calii
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldr	x0, [x0, 24]
	str	x0, [sp, 40]
	b	.L24
	ldr	x0, [sp, 40]
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	bl	free
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L25
	mov	w0, 2
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L26
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x2, [sp, 52]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L27
	ldr	w0, [sp, 56]
	str	w0, [sp, 52]
	adrp	x0, Node
	add	x1, x0, :lo12:Node
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	b	.L28
	ldr	x0, [sp, 40]
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	bl	free
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L29
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L30
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 52]
	ldr	w0, [x0, x1, lsl 2]
	mov	w2, w0
	ldr	w1, [sp, 52]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L31
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret