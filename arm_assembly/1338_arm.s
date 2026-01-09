main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	mov	w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 80]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 80]
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	str	x0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L2
	ldr	x0, [sp, 80]
	str	x0, [sp, 40]
	ldr	x0, [sp, 80]
	ldr	w2, [x0]
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L3
	ldr	x0, [sp, 80]
	ldr	w2, [x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L3
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	lsl	w1, w0, 1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L4
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L6
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L7
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L8
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
	ldr	x0, [sp, 80]
	ldr	w2, [x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	beq	.L9
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L10
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L11
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L12
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L13
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L14
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 80]
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w1, w0, w1
	ldr	x0, [sp, 64]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	b	.L15
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [sp, 56]
	ldr	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	cmp	w1, w0
	bcc	.L17
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L18
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	str	xzr, [x0, 8]
	b	.L19
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 64]
	str	x1, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 80]
	ldr	x0, [x0, 8]
	str	x0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 1288
	ble	.L20
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L21
	ldr	x0, [sp, 32]
	str	x0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L22
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 8]
	str	x0, [sp, 64]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L23
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret