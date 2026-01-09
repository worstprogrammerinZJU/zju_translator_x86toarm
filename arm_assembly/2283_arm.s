x:
q:
p:
bfs:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #48
	stp	x29, x30, [sp]
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	add	x0, sp, 65536
	str	wzr, [x0, 44]
	mov	w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
	add	x0, sp, 65536
	str	wzr, [x0, 36]
	stp	xzr, xzr, [sp, 32]
	add	x0, sp, 48
	mov	x1, 65520
	mov	x2, x1
	mov	w1, 0
	bl	memset
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	mov	w0, 2
	add	x1, sp, 65536
	str	w0, [x1, 44]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w1, [sp, 24]
	str	w1, [x0, 8]
	mov	w0, 3
	add	x1, sp, 65536
	str	w0, [x1, 40]
	mov	w0, 1
	strb	w0, [sp, 32]
	adrp	x0, p
	add	x0, x0, :lo12:p
	str	wzr, [x0, 8]
	b	.L3
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L4
	add	x0, sp, 65536
	ldr	w0, [x0, 44]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 44]
	b	.L3
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	add	x1, sp, 32
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	add	x2, sp, 65536
	ldr	w2, [x2, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L16
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 44]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 65536
	ldr	w0, [x0, 44]
	add	w1, w0, 1
	add	x2, sp, 65536
	str	w1, [x2, 44]
	adrp	x1, p
	add	x1, x1, :lo12:p
	add	x2, sp, 65536
	ldrsw	x2, [x2, 40]
	str	w0, [x1, x2, lsl 2]
	adrp	x0, q
	add	x0, x0, :lo12:q
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L17
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 40]
	add	x0, sp, 65536
	ldr	w1, [x0, 44]
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w1, w0
	blt	.L8
	b	.L6
	nop
	b	.L6
	nop
	add	x0, sp, 65536
	ldr	w1, [x0, 44]
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w1, w0
	bge	.L9
	add	x0, sp, 65536
	str	wzr, [x0, 36]
	b	.L10
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L11
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x1, sp, 65536
	ldrsw	x1, [x1, 36]
	ldrsw	x2, [sp, 16]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L12
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x1, sp, 65536
	ldrsw	x1, [x1, 36]
	ldrsw	x2, [sp, 16]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x1, sp, 65536
	ldrsw	x1, [x1, 40]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 65536
	str	w0, [x1, 40]
	add	x0, sp, 65536
	ldr	w0, [x0, 36]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 36]
	add	x0, sp, 65536
	ldr	w0, [x0, 40]
	cmp	w0, 0
	bne	.L13
	add	x0, sp, 65536
	ldr	w0, [x0, 36]
	sub	w0, w0, #1
	b	.L15
	mov	w0, -1
	ldp	x29, x30, [sp]
	add	sp, sp, 48
	add	sp, sp, 65536
	ret
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L19
	ldr	w0, [sp, 68]
	str	w0, [sp, 24]
	str	wzr, [sp, 92]
	mov	w0, 1
	str	w0, [sp, 88]
	b	.L20
	ldr	w0, [sp, 88]
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	b	.L21
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 84]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 88]
	add	w0, w0, w1
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	bge	.L22
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 84]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L23
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L24
	ldr	w0, [sp, 88]
	str	w0, [sp, 92]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 9
	ble	.L25
	ldr	w0, [sp, 92]
	cmp	w0, 0
	beq	.L26
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 84]
	b	.L27
	ldr	w1, [sp, 92]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bgt	.L28
	b	.L29
	ldr	w0, [sp, 68]
	str	w0, [sp, 76]
	str	wzr, [sp, 72]
	str	wzr, [sp, 88]
	b	.L30
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 84]
	b	.L31
	ldr	w0, [sp, 68]
	ldr	w3, [sp, 72]
	mov	w2, w0
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 88]
	bl	bfs
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmn	w0, #1
	beq	.L32
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	bge	.L32
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 92]
	str	w0, [sp, 76]
	b	.L33
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	bne	.L33
	ldr	w0, [sp, 76]
	str	w0, [sp, 80]
	b	.L34
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 80]
	ldrsw	x2, [sp, 72]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	mov	w2, 1
	ldr	w0, [sp, 72]
	sub	w3, w2, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 80]
	sxtw	x3, w3
	lsl	x3, x3, 16
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L35
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	b	.L33
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 80]
	ldrsw	x2, [sp, 72]
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	mov	w2, 1
	ldr	w0, [sp, 72]
	sub	w3, w2, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 80]
	sxtw	x3, w3
	lsl	x3, x3, 16
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L44
	ldr	w0, [sp, 80]
	sub	w0, w0, #1
	str	w0, [sp, 80]
	ldr	w0, [sp, 80]
	cmp	w0, 0
	bge	.L37
	b	.L33
	nop
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 9
	ble	.L38
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 9
	ble	.L39
	ldr	w0, [sp, 76]
	str	w0, [sp, 88]
	b	.L40
	mov	w1, 1
	ldr	w0, [sp, 72]
	sub	w2, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 88]
	sxtw	x2, w2
	lsl	x2, x2, 16
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bge	.L41
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L42
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret