p:
q:
bowling:
cmp:
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
	bge	.L2
	mov	w0, 1
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, -1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L6
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L7
	str	wzr, [sp, 52]
	b	.L8
	ldrsw	x2, [sp, 52]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, bowling
	add	x0, x0, :lo12:bowling
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L9
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	adrp	x1, bowling
	add	x1, x1, :lo12:bowling
	add	x4, x0, x1
	ldr	w0, [sp, 32]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 56]
	b	.L11
	mov	x2, 400
	mov	w1, 0
	adrp	x0, p
	add	x0, x0, :lo12:p
	bl	memset
	mov	x2, 400
	mov	w1, 0
	adrp	x0, q
	add	x0, x0, :lo12:q
	bl	memset
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	str	wzr, [sp, 52]
	b	.L12
	str	wzr, [sp, 48]
	b	.L13
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	beq	.L14
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldrsw	x1, [sp, 48]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L14
	adrp	x0, bowling
	add	x2, x0, :lo12:bowling
	ldrsw	x3, [sp, 52]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldrsw	x1, [sp, 48]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, bowling
	add	x3, x0, :lo12:bowling
	sxtw	x4, w1
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	bgt	.L14
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldrsw	x1, [sp, 48]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldrsw	x1, [sp, 48]
	str	w2, [x0, x1, lsl 2]
	b	.L15
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 48]
	b	.L18
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	beq	.L32
	b	.L21
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L22
	adrp	x0, bowling
	add	x2, x0, :lo12:bowling
	ldrsw	x3, [sp, 52]
	ldrsw	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, bowling
	add	x3, x0, :lo12:bowling
	sxtw	x4, w1
	ldrsw	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L23
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	beq	.L33
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 48]
	str	w2, [x0, x1, lsl 2]
	b	.L20
	nop
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L26
	b	.L25
	nop
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bne	.L27
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L28
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L29
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L30
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret