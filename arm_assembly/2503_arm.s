link:
word:
dialect:
main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	wzr, [sp, 88]
	add	x0, sp, 24
	bl	gets
	b	.L2
	str	wzr, [sp, 92]
	b	.L3
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	ldrb	w4, [x1, x0]
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 92]
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L4
	ldr	w0, [sp, 92]
	add	w1, w0, 1
	str	w1, [sp, 92]
	adrp	x1, word
	add	x3, x1, :lo12:word
	sxtw	x2, w0
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x2, x0, x1
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 76]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	ldr	w1, [sp, 88]
	str	w1, [x0]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 80]
	str	x1, [x0, 8]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x2, [sp, 80]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	add	x0, sp, 24
	bl	gets
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	b	.L6
	add	x0, sp, 24
	bl	ELFhash
	str	w0, [sp, 76]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 80]
	b	.L7
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x1, x0, x1
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	ldr	x0, [sp, 80]
	ldr	x0, [x0, 8]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	cmp	x0, 0
	bne	.L10
	b	.L9
	nop
	ldr	x0, [sp, 80]
	cmp	x0, 0
	bne	.L11
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L6
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	bl	gets
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
ELFhash:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L16
	ldr	x0, [sp, 24]
	lsl	x1, x0, 4
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4026531840
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L17
	ldr	x0, [sp, 16]
	lsr	x0, x0, 24
	ldr	x1, [sp, 24]
	eor	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	mvn	x0, x0
	ldr	x1, [sp, 24]
	and	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	ldr	x1, [sp, 24]
	mov	x0, 175
	movk	x0, 0x53b3, lsl 16
	movk	x0, 0x94b8, lsl 32
	movk	x0, 0x65ab, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 13
	mov	x2, 20627
	mul	x0, x0, x2
	sub	x0, x1, x0
	add	sp, sp, 32
	ret