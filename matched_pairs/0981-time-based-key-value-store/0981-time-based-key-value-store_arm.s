timeMapCreate:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x0, 32
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
timeMapSet:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	w3, [sp, 36]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L13
	mov	w0, -1
	str	w0, [sp, 76]
	str	wzr, [sp, 72]
	b	.L7
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x1, [sp, 48]
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 72]
	str	w0, [sp, 76]
	b	.L9
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 76]
	cmn	w0, #1
	bne	.L11
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	add	w1, w0, 1
	ldr	x0, [sp, 56]
	str	w1, [x0, 24]
	ldr	x0, [sp, 56]
	ldr	x2, [x0]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	sxtw	x0, w0
	lsl	x0, x0, 3
	mov	x1, x0
	mov	x0, x2
	bl	realloc
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	mov	x1, x0
	mov	x0, x2
	bl	realloc
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	mov	x1, x0
	mov	x0, x2
	bl	realloc
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 24]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x19, x1, x0
	mov	x0, 24
	bl	malloc
	str	x0, [x19]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	b	.L12
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 16]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L12
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 16]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	w1, w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x2, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x3, x0
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x19, x1, x0
	mov	x1, x3
	mov	x0, x2
	bl	realloc
	str	x0, [x19]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x2, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 48]
	bl	strdup
	mov	x1, x0
	ldr	x0, [sp, 64]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	bl	strdup
	mov	x1, x0
	ldr	x0, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	w1, [sp, 36]
	str	w1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	b	.L3
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
timeMapGet:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L15
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L15
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 24]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L17
	str	wzr, [sp, 76]
	b	.L18
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x1, [sp, 32]
	bl	strcmp
	cmp	w0, 0
	bne	.L19
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	str	wzr, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 68]
	mov	w0, -1
	str	w0, [sp, 64]
	b	.L20
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 72]
	add	w0, w0, w1
	str	w0, [sp, 52]
	ldrsw	x1, [sp, 52]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	w0, [x0, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 52]
	str	w0, [sp, 64]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 72]
	b	.L20
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 68]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	ble	.L22
	ldr	w0, [sp, 64]
	cmn	w0, #1
	beq	.L19
	ldrsw	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x0, [x0, 8]
	b	.L17
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 24]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L23
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldp	x29, x30, [sp], 80
	ret
timeMapFree:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L31
	str	wzr, [sp, 44]
	b	.L27
	str	wzr, [sp, 40]
	b	.L28
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x0, [x0, 8]
	bl	free
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L29
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L30
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	bl	free
	ldr	x0, [sp, 24]
	bl	free
	b	.L24
	nop
	ldp	x29, x30, [sp], 48
	ret