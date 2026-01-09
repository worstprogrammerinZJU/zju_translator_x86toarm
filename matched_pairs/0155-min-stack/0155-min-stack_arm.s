nodeCreate:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
nodePush:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L4
	adrp	x0, __PRETTY_FUNCTION__.7
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.7
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 20]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
nodePop:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L6
	adrp	x0, __PRETTY_FUNCTION__.6
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.6
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L8
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	bl	free
	nop
	ldp	x29, x30, [sp], 48
	ret
stackCreate:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
stackPush:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L12
	ldr	w0, [sp, 20]
	bl	nodeCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	b	.L13
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w1, [sp, 20]
	bl	nodePush
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
stackPop:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	bl	nodePop
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
stackTop:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.5
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.5
	mov	w2, 66
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.5
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.5
	mov	w2, 67
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 32
	ret
minStackCreate:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
minStackPush:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.4
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.4
	mov	w2, 84
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L23
	bl	stackCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	bl	stackCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	w1, [sp, 20]
	bl	stackPush
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L24
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackTop
	str	w0, [sp, 44]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bge	.L25
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 20]
	bl	stackPush
	b	.L27
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 44]
	bl	stackPush
	b	.L27
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 20]
	bl	stackPush
	nop
	ldp	x29, x30, [sp], 48
	ret
minStackPop:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L29
	adrp	x0, __PRETTY_FUNCTION__.3
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3
	mov	w2, 103
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackPop
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackPop
	nop
	ldp	x29, x30, [sp], 32
	ret
minStackTop:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.2
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.2
	mov	w2, 109
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackTop
	ldp	x29, x30, [sp], 32
	ret
minStackGetMin:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L34
	adrp	x0, __PRETTY_FUNCTION__.1
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.1
	mov	w2, 114
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackTop
	ldp	x29, x30, [sp], 32
	ret
minStackFree:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L37
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 119
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L38
	b	.L39
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackPop
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L40
	b	.L41
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackPop
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L42
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	free
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 32
	ret