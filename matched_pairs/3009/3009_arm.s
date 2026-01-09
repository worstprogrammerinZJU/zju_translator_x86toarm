board:
w:
h:
step:
dfs:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bgt	.L27
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	beq	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L5
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 3
	bne	.L6
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L28
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w1, [sp, 20]
	str	w1, [x0]
	b	.L28
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	bne	.L8
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	str	wzr, [x2, x0, lsl 2]
	ldr	w0, [sp, 44]
	add	w3, w0, 1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 24]
	mov	w0, w3
	bl	dfs
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	b	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L9
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, board
	add	x2, x0, :lo12:board
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	beq	.L10
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L11
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 3
	bne	.L12
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L29
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w1, [sp, 20]
	str	w1, [x0]
	b	.L29
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	bne	.L14
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	str	wzr, [x2, x0, lsl 2]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 28]
	bl	dfs
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	b	.L10
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L15
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L16
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	beq	.L16
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L17
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 3
	bne	.L18
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L30
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w1, [sp, 20]
	str	w1, [x0]
	b	.L30
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	bne	.L20
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	str	wzr, [x2, x0, lsl 2]
	ldr	w0, [sp, 44]
	sub	w3, w0, #1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w1, [sp, 24]
	mov	w0, w3
	bl	dfs
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	b	.L16
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L1
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, board
	add	x2, x0, :lo12:board
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	beq	.L1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L22
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 3
	bne	.L23
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L31
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w1, [sp, 20]
	str	w1, [x0]
	b	.L31
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 1
	bne	.L25
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	str	wzr, [x2, x0, lsl 2]
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 28]
	bl	dfs
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	b	.L1
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L26
	b	.L1
	nop
	b	.L1
	nop
	b	.L1
	nop
	b	.L1
	nop
	b	.L1
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L33
	str	wzr, [sp, 28]
	b	.L34
	str	wzr, [sp, 24]
	b	.L35
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, board
	add	x0, x0, :lo12:board
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, board
	add	x2, x0, :lo12:board
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 2
	bne	.L36
	ldr	w0, [sp, 28]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L37
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L38
	adrp	x0, step
	add	x0, x0, :lo12:step
	mov	w1, 11
	str	w1, [x0]
	mov	w2, 1
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	bl	dfs
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	cmp	w0, 10
	ble	.L39
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L40
	adrp	x0, step
	add	x0, x0, :lo12:step
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L41
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L41
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret