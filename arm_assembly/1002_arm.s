main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	wzr, [sp, 68]
	str	xzr, [sp, 56]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L2
	str	wzr, [sp, 72]
	b	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 47
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 57
	bhi	.L4
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 39]
	add	w0, w1, w0
	sub	w0, w0, #48
	str	w0, [sp, 72]
	b	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L5
	ldrb	w0, [sp, 39]
	cmp	w0, 80
	bhi	.L5
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrb	w0, [sp, 39]
	sub	w0, w0, #65
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w2, w0
	add	w0, w0, 2
	str	w0, [sp, 72]
	b	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 81
	bls	.L3
	ldrb	w0, [sp, 39]
	cmp	w0, 89
	bhi	.L3
	ldr	w1, [sp, 72]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrb	w0, [sp, 39]
	sub	w0, w0, #81
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w2, w0
	add	w0, w0, 7
	str	w0, [sp, 72]
	bl	getchar
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 10
	bne	.L6
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L7
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	w1, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 16]
	b	.L8
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	b	.L9
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	str	w0, [sp, 68]
	ldr	x0, [sp, 48]
	ldr	w0, [x0, 4]
	add	w1, w0, 1
	ldr	x0, [sp, 48]
	str	w1, [x0, 4]
	b	.L11
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	ble	.L12
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 16]
	str	x0, [sp, 48]
	b	.L9
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L13
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L8
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bge	.L14
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	b	.L8
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0, 16]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	ble	.L15
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L17
	ldr	x0, [sp, 56]
	bl	dfs
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
dfs:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	dfs
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	cmp	w0, 0
	ble	.L22
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 12
	asr	w0, w0, 31
	sub	w4, w1, w0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 12
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 10000
	mul	w1, w1, w2
	sub	w1, w0, w1
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 4]
	add	w0, w0, 1
	mov	w3, w0
	mov	w2, w1
	mov	w1, w4
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	bl	dfs
	b	.L19
	nop
	ldp	x29, x30, [sp], 32
	ret