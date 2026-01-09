Dist:
n:
k:
flag:
_Z3bfsv:
	sub	x12, sp, #786432
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 13600
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, 13572
	movk	x1, 0xc, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 16]
	add	x0, sp, 786432
	str	wzr, [x0, 13596]
	mov	w0, 1
	add	x1, sp, 786432
	str	w0, [x1, 13592]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	b	.L2
	add	x0, sp, 786432
	ldrsw	x0, [x0, 13596]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	add	x1, sp, 786432
	str	w0, [x1, 13588]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	add	x1, sp, 786432
	ldr	w1, [x1, 13588]
	cmp	w1, w0
	beq	.L9
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	cmp	w0, 0
	ble	.L5
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	sub	w2, w0, #1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	sub	w2, w0, #1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	add	x1, sp, 786432
	ldrsw	x1, [x1, 13588]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 786432
	ldr	w1, [x1, 13588]
	sub	w1, w1, #1
	add	w2, w0, 1
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	sub	w2, w0, #1
	add	x0, sp, 786432
	ldr	w0, [x0, 13592]
	add	w1, w0, 1
	add	x3, sp, 786432
	str	w1, [x3, 13592]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	add	x1, sp, 786432
	ldr	w1, [x1, 13588]
	cmp	w1, w0
	bge	.L6
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	add	w2, w0, 1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	add	w2, w0, 1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	add	x1, sp, 786432
	ldrsw	x1, [x1, 13588]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 786432
	ldr	w1, [x1, 13588]
	add	w1, w1, 1
	add	w2, w0, 1
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	add	w2, w0, 1
	add	x0, sp, 786432
	ldr	w0, [x0, 13592]
	add	w1, w0, 1
	add	x3, sp, 786432
	str	w1, [x3, 13592]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	lsl	w2, w0, 1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	lsl	w2, w0, 1
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	add	x1, sp, 786432
	ldrsw	x1, [x1, 13588]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 786432
	ldr	w1, [x1, 13588]
	lsl	w1, w1, 1
	add	w2, w0, 1
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 786432
	ldr	w0, [x0, 13588]
	lsl	w2, w0, 1
	add	x0, sp, 786432
	ldr	w0, [x0, 13592]
	add	w1, w0, 1
	add	x3, sp, 786432
	str	w1, [x3, 13592]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	add	x0, sp, 786432
	ldr	w0, [x0, 13596]
	add	w0, w0, 1
	add	x1, sp, 786432
	str	w0, [x1, 13596]
	add	x0, sp, 786432
	ldr	w1, [x0, 13596]
	add	x0, sp, 786432
	ldr	w0, [x0, 13592]
	cmp	w1, w0
	blt	.L8
	b	.L10
	nop
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 1312
	add	sp, sp, 798720
	ret
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	bl	_Z3bfsv
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	adrp	x0, Dist
	add	x0, x0, :lo12:Dist
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret