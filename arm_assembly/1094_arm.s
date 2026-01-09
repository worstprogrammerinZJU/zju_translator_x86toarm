m:
n:
rear:
sort:
letter:
top:
sorted:
_Z9in_degreev:
	sub	sp, sp, #16
	mov	w0, -1
	str	w0, [sp, 12]
	str	wzr, [sp, 8]
	b	.L2
	adrp	x0, top
	add	x1, x0, :lo12:top
	ldrsw	x0, [sp, 8]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L12
	str	wzr, [sp, 4]
	b	.L5
	adrp	x0, letter
	add	x3, x0, :lo12:letter
	ldrsw	x2, [sp, 8]
	ldrsw	x1, [sp, 4]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L6
	adrp	x0, top
	add	x1, x0, :lo12:top
	ldrsw	x0, [sp, 4]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	blt	.L8
	b	.L7
	nop
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 12]
	cmn	w0, #1
	bne	.L9
	ldr	w0, [sp, 8]
	str	w0, [sp, 12]
	b	.L4
	adrp	x0, sorted
	add	x0, x0, :lo12:sorted
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 12]
	b	.L10
	nop
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L15
	mov	x2, 676
	mov	w1, 0
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	bl	memset
	strb	wzr, [sp, 39]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L16
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrb	w0, [sp, 39]
	cmp	w0, 1
	beq	.L29
	ldrb	w0, [sp, 16]
	sub	w1, w0, #65
	ldrb	w0, [sp, 18]
	sub	w2, w0, #65
	adrp	x0, letter
	add	x3, x0, :lo12:letter
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	mov	x2, 26
	mov	w1, 0
	adrp	x0, top
	add	x0, x0, :lo12:top
	bl	memset
	adrp	x0, sorted
	add	x0, x0, :lo12:sorted
	strb	wzr, [x0]
	str	wzr, [sp, 40]
	b	.L19
	bl	_Z9in_degreev
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 1
	strb	w0, [sp, 39]
	b	.L21
	adrp	x0, top
	add	x1, x0, :lo12:top
	ldrsw	x0, [sp, 32]
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	and	w0, w0, 255
	add	w0, w0, 65
	and	w2, w0, 255
	adrp	x0, sort
	add	x1, x0, :lo12:sort
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L22
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L18
	adrp	x0, sorted
	add	x0, x0, :lo12:sorted
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, sort
	add	x1, x0, :lo12:sort
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	adrp	x0, sort
	add	x2, x0, :lo12:sort
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	strb	w0, [sp, 39]
	b	.L18
	nop
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L23
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L24
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L25
	mov	w0, 1
	b	.L26
	mov	w0, 0
	cmp	w0, 0
	bne	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret