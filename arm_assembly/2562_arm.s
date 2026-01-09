main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L3
	ldr	w1, [sp, 16]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w2, w0, 3
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	ldr	w3, [sp, 20]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w3, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 3
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w3, w0
	add	w1, w2, w1
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 9
	ble	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 16]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	str	w0, [sp, 16]
	ldr	w1, [sp, 20]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L7
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L8
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L7
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret