numofnode:
Flow:
Residual:
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 56
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	b	.L2
	mov	x2, 3600
	mov	w1, 0
	adrp	x0, Flow
	add	x0, x0, :lo12:Flow
	bl	memset
	mov	x2, 3600
	mov	w1, 0
	adrp	x0, Residual
	add	x0, x0, :lo12:Residual
	bl	memset
	add	x0, sp, 84
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 84]
	add	w1, w0, 6
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L3
	adrp	x0, Flow
	add	x0, x0, :lo12:Flow
	ldrsw	x1, [sp, 92]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	str	wzr, [sp, 80]
	b	.L4
	ldr	w0, [sp, 80]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	ldrb	w1, [sp, 24]
	cmp	w0, w1
	beq	.L20
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w0, [sp, 80]
	cmp	w0, 4
	ble	.L7
	b	.L6
	nop
	ldr	w0, [sp, 80]
	str	w0, [sp, 88]
	b	.L8
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	ldrb	w1, [sp, 25]
	cmp	w0, w1
	beq	.L21
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 4
	ble	.L11
	b	.L12
	nop
	b	.L12
	ldr	w1, [sp, 80]
	ldr	w0, [sp, 84]
	add	w0, w1, w0
	add	w1, w0, 1
	adrp	x0, Flow
	add	x2, x0, :lo12:Flow
	sxtw	x3, w1
	ldrsw	x1, [sp, 92]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	bge	.L13
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	ble	.L14
	str	wzr, [sp, 92]
	b	.L15
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 84]
	add	w1, w0, 1
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w4, [x0]
	ldr	w3, [sp, 80]
	adrp	x0, Flow
	add	x2, x0, :lo12:Flow
	sxtw	x4, w4
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 4
	ble	.L16
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	bl	_Z14bfsnetworkflowv
	mov	w1, w0
	ldr	w0, [sp, 84]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
_Z14bfsnetworkflowv:
	sub	sp, sp, #400
	mov	w0, 16959
	movk	w0, 0xf, lsl 16
	str	w0, [sp, 128]
	str	wzr, [sp, 396]
	b	.L23
	ldrsw	x0, [sp, 396]
	lsl	x0, x0, 2
	add	x1, sp, 248
	mov	w2, -2
	str	w2, [x1, x0]
	ldr	w0, [sp, 396]
	add	w0, w0, 1
	str	w0, [sp, 396]
	ldr	w0, [sp, 396]
	cmp	w0, 29
	ble	.L24
	mov	w0, -1
	str	w0, [sp, 248]
	str	wzr, [sp, 384]
	mov	w0, 1
	str	w0, [sp, 380]
	ldrsw	x0, [sp, 384]
	lsl	x0, x0, 2
	add	x1, sp, 8
	str	wzr, [x1, x0]
	b	.L25
	ldr	w0, [sp, 384]
	add	w1, w0, 1
	str	w1, [sp, 384]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 8
	ldr	w0, [x1, x0]
	str	w0, [sp, 372]
	str	wzr, [sp, 396]
	b	.L26
	ldrsw	x0, [sp, 396]
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w0, [x1, x0]
	cmn	w0, #2
	bne	.L27
	adrp	x0, Flow
	add	x2, x0, :lo12:Flow
	ldrsw	x3, [sp, 396]
	ldrsw	x1, [sp, 372]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, Residual
	add	x3, x0, :lo12:Residual
	ldrsw	x4, [sp, 396]
	ldrsw	x1, [sp, 372]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w2, w0
	str	w0, [sp, 388]
	ldr	w0, [sp, 388]
	cmp	w0, 0
	beq	.L27
	mov	w0, 1
	b	.L28
	mov	w0, 0
	cmp	w0, 0
	beq	.L29
	ldrsw	x0, [sp, 396]
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w2, [sp, 372]
	str	w2, [x1, x0]
	ldr	w2, [sp, 396]
	ldr	w0, [sp, 380]
	add	w1, w0, 1
	str	w1, [sp, 380]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 8
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 2
	add	x1, sp, 128
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 388]
	cmp	w1, w0
	ble	.L30
	ldrsw	x0, [sp, 372]
	lsl	x0, x0, 2
	add	x1, sp, 128
	ldr	w0, [x1, x0]
	b	.L31
	ldr	w0, [sp, 388]
	ldrsw	x1, [sp, 396]
	lsl	x1, x1, 2
	add	x2, sp, 128
	str	w0, [x2, x1]
	ldr	w0, [sp, 396]
	add	w0, w0, 1
	str	w0, [sp, 396]
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	ldr	w1, [sp, 396]
	cmp	w1, w0
	ble	.L32
	ldr	w1, [sp, 384]
	ldr	w0, [sp, 380]
	cmp	w1, w0
	bge	.L33
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w0, [x1, x0]
	cmn	w0, #2
	beq	.L34
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w0, [x1, x0]
	cmn	w0, #2
	beq	.L44
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w0, [x1, x0]
	str	w0, [sp, 396]
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	str	w0, [sp, 392]
	b	.L37
	adrp	x0, Residual
	add	x2, x0, :lo12:Residual
	ldrsw	x3, [sp, 392]
	ldrsw	x1, [sp, 396]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 128
	ldr	w0, [x2, x0]
	add	w3, w1, w0
	adrp	x0, Residual
	add	x2, x0, :lo12:Residual
	ldrsw	x4, [sp, 392]
	ldrsw	x1, [sp, 396]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	adrp	x0, Residual
	add	x2, x0, :lo12:Residual
	ldrsw	x3, [sp, 392]
	ldrsw	x1, [sp, 396]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	neg	w3, w0
	adrp	x0, Residual
	add	x2, x0, :lo12:Residual
	ldrsw	x4, [sp, 396]
	ldrsw	x1, [sp, 392]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 396]
	str	w0, [sp, 392]
	ldrsw	x0, [sp, 396]
	lsl	x0, x0, 2
	add	x1, sp, 248
	ldr	w0, [x1, x0]
	str	w0, [sp, 396]
	ldr	w0, [sp, 396]
	cmn	w0, #1
	bne	.L38
	b	.L39
	nop
	str	wzr, [sp, 396]
	str	wzr, [sp, 376]
	b	.L40
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w1, [x0]
	adrp	x0, Residual
	add	x2, x0, :lo12:Residual
	sxtw	x3, w1
	ldrsw	x1, [sp, 396]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 376]
	add	w0, w1, w0
	str	w0, [sp, 376]
	ldr	w0, [sp, 396]
	add	w0, w0, 1
	str	w0, [sp, 396]
	adrp	x0, numofnode
	add	x0, x0, :lo12:numofnode
	ldr	w0, [x0]
	ldr	w1, [sp, 396]
	cmp	w1, w0
	blt	.L41
	ldr	w0, [sp, 376]
	add	sp, sp, 400
	ret