Check:
Hide:
Match:
N:
P:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	adrp	x0, N
	add	x2, x0, :lo12:N
	adrp	x0, P
	add	x1, x0, :lo12:P
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	x2, 28928
	movk	x2, 0x2, lsl 16
	mov	w1, 0
	adrp	x0, Hide
	add	x0, x0, :lo12:Hide
	bl	memset
	str	wzr, [sp, 40]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 36]
	b	.L4
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	sxtw	x2, w1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 40]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 32]
	mov	x2, 1600
	mov	w1, -1
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	bl	memset
	str	wzr, [sp, 20]
	b	.L7
	mov	x2, 400
	mov	w1, 0
	adrp	x0, Check
	add	x0, x0, :lo12:Check
	bl	memset
	ldr	w0, [sp, 20]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L9
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bne	.L10
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L11
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z3DFSi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	str	wzr, [sp, 40]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	str	w0, [sp, 36]
	b	.L16
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	str	w0, [sp, 40]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w1, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	b	.L17
	adrp	x0, Hide
	add	x3, x0, :lo12:Hide
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L18
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L18
	adrp	x0, Check
	add	x1, x0, :lo12:Check
	ldrsw	x0, [sp, 44]
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	beq	.L19
	ldr	w0, [sp, 32]
	bl	_Z3DFSi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	mov	w0, 1
	b	.L21
	mov	w0, 0
	cmp	w0, 0
	beq	.L22
	mov	w0, 1
	b	.L23
	adrp	x0, Match
	add	x0, x0, :lo12:Match
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 32]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret