n:
balance:
num:
Node:
insert:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 28]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 28]
	ldr	x2, [sp, 40]
	str	x2, [x0, x1, lsl 3]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	nop
	ldp	x29, x30, [sp], 48
	ret
cal:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 60]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 56]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 48]
	b	.L3
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L4
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	cal
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 40]
	str	w0, [sp, 60]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 56]
	b	.L6
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L7
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
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 60]
	cmp	w2, w0
	csel	w2, w1, w0, ge
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 50000
	str	w0, [sp, 24]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L10
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 16]
	bl	insert
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	bl	insert
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L11
	mov	w1, 1
	mov	w0, 0
	bl	cal
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L12
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L13
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L14
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L15
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L16
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret