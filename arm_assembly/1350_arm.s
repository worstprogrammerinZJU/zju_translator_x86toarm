n:
d:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 999
	ble	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 9999
	cmp	w1, w0
	bgt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 1111
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 2222
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 3333
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 4444
	cmp	w1, w0
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 5555
	cmp	w1, w0
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 6666
	cmp	w1, w0
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 7777
	cmp	w1, w0
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 8888
	cmp	w1, w0
	beq	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 9999
	cmp	w1, w0
	bne	.L4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	str	wzr, [sp, 32]
	b	.L5
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	wzr, [x0, 12]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0, 12]
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0, 8]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0, 8]
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0, 4]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0, 4]
	adrp	x0, d
	add	x0, x0, :lo12:d
	str	w1, [x0]
	str	wzr, [sp, 36]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 40]
	b	.L6
	ldr	w2, [sp, 40]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 36]
	str	w1, [x0, x2, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L7
	str	wzr, [sp, 44]
	b	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L9
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L10
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 40]
	ldr	w2, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 28]
	str	wzr, [sp, 44]
	b	.L13
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	add	w0, w2, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L15
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L16
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L17
	str	wzr, [sp, 24]
	b	.L18
	ldr	w1, [sp, 24]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	add	w0, w2, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L19
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w3, w0
	ldr	w2, [sp, 24]
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	mov	w0, 6174
	cmp	w1, w0
	beq	.L20
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L21
	ldr	w1, [sp, 32]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmn	w0, #1
	bne	.L22
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret