Check:
Hide:
Match:
n:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	b	.L2
	add	x0, sp, 20
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	x2, 14400
	mov	w1, 0
	adrp	x0, Hide
	add	x0, x0, :lo12:Hide
	bl	memset
	str	wzr, [sp, 44]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 36]
	mov	x2, 480
	mov	w1, -1
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	bl	memset
	str	wzr, [sp, 44]
	b	.L5
	mov	x2, 120
	mov	w1, 0
	adrp	x0, Check
	add	x0, x0, :lo12:Check
	bl	memset
	ldr	w0, [sp, 44]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z3DFSi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L11
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L12
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 40]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	cmn	w0, #1
	beq	.L13
	ldr	w0, [sp, 40]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L16
	mov	w0, 1
	b	.L17
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret