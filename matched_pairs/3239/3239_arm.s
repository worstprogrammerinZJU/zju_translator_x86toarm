main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	w2, [sp, 20]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 2
	beq	.L3
	ldr	w2, [sp, 20]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	cmp	w1, 3
	beq	.L3
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L4
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L6
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	mov	w0, 10
	bl	putchar
	b	.L2
	ldr	w0, [sp, 20]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 20]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L9
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L12
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L14
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L16
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	b	.L18
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L19
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L20
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L21
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L22
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L23
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L24
	mov	w0, 10
	bl	putchar
	b	.L2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L25
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 24]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L27
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L28
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L29
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L30
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L31
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L32
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L33
	b	.L34
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L35
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L36
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L37
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L38
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L39
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L40
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L41
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret