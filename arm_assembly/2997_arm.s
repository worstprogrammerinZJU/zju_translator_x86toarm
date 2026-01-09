m:
j:
s:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 28]
	adrp	x0, j
	add	x0, x0, :lo12:j
	str	wzr, [x0]
	b	.L3
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 118
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 120
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 108
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 99
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 100
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 109
	bne	.L5
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, j
	add	x1, x1, :lo12:j
	str	w2, [x1]
	adrp	x1, s
	add	x2, x1, :lo12:s
	ldrsw	x1, [sp, 28]
	ldrb	w2, [x2, x1]
	adrp	x1, s
	add	x1, x1, :lo12:s
	sxtw	x0, w0
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w2, [x0]
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	str	wzr, [sp, 24]
	mov	w2, 0
	mov	w1, 109
	mov	w0, 0
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 1000
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 1
	mov	w1, 100
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 500
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 99
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 100
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 99
	mov	w1, 120
	ldr	w0, [sp, 28]
	bl	cmpd
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 24]
	add	w0, w0, 90
	str	w0, [sp, 24]
	b	.L8
	mov	w2, 1
	mov	w1, 108
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 50
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 120
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, w1
	str	w0, [sp, 24]
	mov	w2, 120
	mov	w1, 105
	ldr	w0, [sp, 28]
	bl	cmpd
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 24]
	add	w0, w0, 9
	str	w0, [sp, 24]
	b	.L10
	mov	w2, 1
	mov	w1, 118
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 105
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
cmp:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	strb	w1, [sp, 11]
	str	w2, [sp, 4]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	b	.L14
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 12]
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 11]
	cmp	w1, w0
	bne	.L15
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L15
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	b	.L16
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
cmpd:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	strb	w1, [sp, 11]
	strb	w2, [sp, 10]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 11]
	strb	w0, [sp, 31]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	b	.L19
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 12]
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	bne	.L20
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L21
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	b	.L22
	adrp	x0, m
	add	x0, x0, :lo12:m
	mov	w1, 1
	str	w1, [x0]
	ldrb	w0, [sp, 10]
	strb	w0, [sp, 31]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L23
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	ret