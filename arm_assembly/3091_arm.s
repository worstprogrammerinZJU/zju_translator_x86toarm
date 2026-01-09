main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 16]
	lsl	w0, w0, 1
	add	w0, w0, 1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w3, [sp, 28]
	mov	w2, w0
	ldr	w1, [sp, 36]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w2, [sp, 16]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 2
	bne	.L3
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 16]
	str	wzr, [sp, 32]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
	mov	w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	b	.L4
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 7
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L6
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	str	w0, [sp, 40]
	b	.L8
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 7
	cmp	w0, 0
	beq	.L9
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L10
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L11
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret