s:
find:
	sub	sp, sp, #16
	strb	w0, [sp, 15]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	mov	w0, 1
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	b	.L3
	mov	w0, 0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L12
	str	wzr, [sp, 60]
	b	.L13
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L14
	ldr	w1, [sp, 60]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 56]
	add	w3, w1, w0
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w2, [x1, x0]
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w3
	strb	w2, [x1, x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 2
	ble	.L15
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 2
	ble	.L16
	str	wzr, [sp, 48]
	ldr	w0, [sp, 48]
	str	w0, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L17
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	cmp	w0, 88
	bne	.L18
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L19
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	cmp	w0, 79
	bne	.L19
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 8
	ble	.L20
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	beq	.L21
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L22
	mov	w0, 88
	bl	find
	str	w0, [sp, 36]
	mov	w0, 79
	bl	find
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L23
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L23
	str	wzr, [sp, 40]
	b	.L24
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bne	.L25
	str	wzr, [sp, 40]
	b	.L24
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L31
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L31
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L31
	str	wzr, [sp, 40]
	b	.L31
	b	.L31
	str	wzr, [sp, 40]
	b	.L26
	nop
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L27
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L28
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L29
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret