Parent:
eat:
beeat:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	wzr, [sp, 56]
	add	x1, sp, 52
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L3
	str	wzr, [sp, 60]
	b	.L4
	add	x2, sp, 40
	add	x1, sp, 44
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L5
	ldr	w0, [sp, 36]
	cmp	w0, 2
	bne	.L6
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	bl	root
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L8
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 44]
	bl	root
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L9
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 44]
	bl	root
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 40]
	bl	root
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L11
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 40]
	bl	root
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L13
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L14
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	bl	merge
	b	.L7
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L16
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L18
	ldr	w1, [sp, 44]
	ldr	w2, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L19
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L20
	ldr	w1, [sp, 40]
	ldr	w2, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L21
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L22
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L22
	ldr	w1, [sp, 44]
	ldr	w3, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L7
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L23
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L23
	ldr	w1, [sp, 40]
	ldr	w3, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L7
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L24
	ldr	w1, [sp, 56]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L27
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L28
	b	.L29
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L30
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
merge:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L33
	ldr	w0, [sp, 28]
	b	.L34
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L35
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L36
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L36
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L37
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L37
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L37
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L38
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L38
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L39
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L39
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L39
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	b	.L34
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L40
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L40
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L41
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L42
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L42
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L43
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L43
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L43
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret