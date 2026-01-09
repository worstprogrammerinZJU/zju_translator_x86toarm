m:
n:
Step:
map:
_Z3dfsiii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	mov	w0, 10000
	str	w0, [sp, 44]
	mov	w0, 10000
	str	w0, [sp, 40]
	adrp	x0, Step
	add	x3, x0, :lo12:Step
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	b	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, Step
	add	x3, x0, :lo12:Step
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 83
	beq	.L4
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 20]
	b	.L6
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L7
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, map
	add	x3, x0, :lo12:map
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 83
	bne	.L7
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, Step
	add	x3, x0, :lo12:Step
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsiii
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, map
	add	x3, x0, :lo12:map
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 83
	bne	.L8
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, Step
	add	x3, x0, :lo12:Step
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w2, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsiii
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 40]
	b	.L6
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L11
	str	wzr, [sp, 28]
	b	.L12
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, map
	add	x1, x1, :lo12:map
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #2
	str	w0, [sp, 24]
	b	.L13
	adrp	x0, map
	add	x3, x0, :lo12:map
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 83
	bne	.L14
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L15
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L16
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #2
	ldr	w1, [sp, 24]
	cmp	w1, w0
	beq	.L14
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, map
	add	x3, x0, :lo12:map
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 83
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bge	.L17
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	mov	x2, 62500
	mov	w1, 0
	adrp	x0, Step
	add	x0, x0, :lo12:Step
	bl	memset
	str	wzr, [sp, 24]
	b	.L19
	adrp	x0, map
	add	x1, x0, :lo12:map
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 83
	beq	.L26
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L22
	b	.L21
	nop
	mov	w2, 1
	ldr	w1, [sp, 24]
	mov	w0, 0
	bl	_Z3dfsiii
	str	w0, [sp, 20]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #2
	ldr	w1, [sp, 24]
	cmp	w1, w0
	beq	.L23
	mov	x2, 62500
	mov	w1, 0
	adrp	x0, Step
	add	x0, x0, :lo12:Step
	bl	memset
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w2, 1
	mov	w1, w0
	mov	w0, 0
	bl	_Z3dfsiii
	str	w0, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L23
	ldr	w0, [sp, 16]
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L24
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret