Cost:
Dist:
Prev:
_Z8Dijkstraii:
	sub	sp, sp, #544
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 540]
	b	.L2
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	ldrsw	x3, [sp, 540]
	ldrsw	x1, [sp, 8]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 540]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 540]
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 540]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 57600
	movk	w0, 0x5f5, lsl 16
	cmp	w1, w0
	bne	.L3
	adrp	x0, Prev
	add	x0, x0, :lo12:Prev
	ldrsw	x1, [sp, 540]
	str	wzr, [x0, x1, lsl 2]
	b	.L4
	adrp	x0, Prev
	add	x0, x0, :lo12:Prev
	ldrsw	x1, [sp, 540]
	ldr	w2, [sp, 8]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 540]
	add	w0, w0, 1
	str	w0, [sp, 540]
	ldr	w1, [sp, 540]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L5
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 8]
	str	wzr, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 8]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 540]
	b	.L6
	mov	w0, 57600
	movk	w0, 0x5f5, lsl 16
	str	w0, [sp, 532]
	ldr	w0, [sp, 8]
	str	w0, [sp, 528]
	str	wzr, [sp, 536]
	b	.L7
	ldrsw	x0, [sp, 536]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 536]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 532]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 536]
	str	w0, [sp, 528]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 536]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 532]
	ldr	w0, [sp, 536]
	add	w0, w0, 1
	str	w0, [sp, 536]
	ldr	w1, [sp, 536]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	ldrsw	x0, [sp, 528]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	str	wzr, [sp, 536]
	b	.L10
	ldrsw	x0, [sp, 536]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	ldrsw	x3, [sp, 536]
	ldrsw	x1, [sp, 528]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	mov	w0, 57599
	movk	w0, 0x5f5, lsl 16
	cmp	w1, w0
	bgt	.L11
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 528]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Cost
	add	x3, x0, :lo12:Cost
	ldrsw	x4, [sp, 536]
	ldrsw	x1, [sp, 528]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w0, w2, w0
	str	w0, [sp, 524]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 536]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 524]
	cmp	w1, w0
	bge	.L11
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	ldrsw	x1, [sp, 536]
	ldr	w2, [sp, 524]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Prev
	add	x0, x0, :lo12:Prev
	ldrsw	x1, [sp, 536]
	ldr	w2, [sp, 528]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 536]
	add	w0, w0, 1
	str	w0, [sp, 536]
	ldr	w1, [sp, 536]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 540]
	add	w0, w0, 1
	str	w0, [sp, 540]
	ldr	w1, [sp, 540]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L13
	nop
	nop
	add	sp, sp, 544
	ret
main:
	stp	x29, x30, [sp, -464]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, 400
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 460]
	add	x3, sp, 440
	add	x2, sp, 444
	add	x1, sp, 448
	add	x0, sp, 452
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 456]
	b	.L15
	str	wzr, [sp, 36]
	b	.L16
	ldr	w1, [sp, 36]
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	sxtw	x3, w1
	ldrsw	x1, [sp, 456]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	mov	w1, 57600
	movk	w1, 0x5f5, lsl 16
	str	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 452]
	cmp	w1, w0
	blt	.L17
	adrp	x0, Cost
	add	x1, x0, :lo12:Cost
	ldrsw	x2, [sp, 456]
	mov	x0, 2004
	mul	x0, x2, x0
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 452]
	ldr	w1, [sp, 456]
	cmp	w1, w0
	blt	.L18
	str	wzr, [sp, 456]
	b	.L19
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	sub	w3, w0, #1
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	ldr	w0, [sp, 32]
	sub	w4, w0, #1
	ldr	w3, [sp, 28]
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	sxtw	x4, w4
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	ldr	w0, [sp, 36]
	sub	w4, w0, #1
	ldr	w3, [sp, 28]
	adrp	x0, Cost
	add	x2, x0, :lo12:Cost
	sxtw	x4, w4
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 448]
	ldr	w1, [sp, 456]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 452]
	mov	w1, 0
	bl	_Z8Dijkstraii
	mov	w0, 1
	str	w0, [sp, 456]
	b	.L22
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	bgt	.L23
	ldr	w2, [sp, 456]
	ldr	w0, [sp, 460]
	add	w1, w0, 1
	str	w1, [sp, 460]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 444]
	ldr	w1, [sp, 456]
	cmp	w1, w0
	ble	.L24
	ldr	w1, [sp, 460]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	str	wzr, [sp, 456]
	b	.L25
	ldrsw	x0, [sp, 456]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w1, [sp, 456]
	ldr	w0, [sp, 460]
	cmp	w1, w0
	blt	.L26
	mov	w0, 0
	ldp	x29, x30, [sp], 464
	ret