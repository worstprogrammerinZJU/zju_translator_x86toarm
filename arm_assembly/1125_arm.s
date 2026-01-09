Dist:
n:
Floyd_Warshall:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 20]
	b	.L2
	str	wzr, [sp, 28]
	b	.L3
	str	wzr, [sp, 24]
	b	.L4
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 20]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L5
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 20]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L5
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L6
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 20]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 20]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w2, w2, w0
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	bge	.L5
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 20]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, Dist
	add	x3, x0, :lo12:Dist
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 20]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w3, w2, w0
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L11
	mov	x2, 40000
	mov	w1, 0
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	bl	memset
	str	wzr, [sp, 44]
	b	.L12
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L13
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	ldr	w3, [sp, 28]
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	sxtw	x4, w1
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L15
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	bl	Floyd_Warshall
	str	wzr, [sp, 44]
	mov	w0, 10000
	str	w0, [sp, 32]
	b	.L16
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L17
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L29
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L30
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L19
	adrp	x0, Dist
	add	x2, x0, :lo12:Dist
	ldrsw	x3, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 36]
	b	.L19
	nop
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L22
	b	.L21
	nop
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L23
	ldr	w0, [sp, 36]
	str	w0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L24
	ldr	w1, [sp, 32]
	mov	w0, 10000
	cmp	w1, w0
	bne	.L25
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L26
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 32]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret