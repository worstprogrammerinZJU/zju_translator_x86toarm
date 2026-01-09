link:
m:
n:
salary:
word:
_Z7ELFhashPc:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L2
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
	beq	.L3
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
	bne	.L4
	ldr	x1, [sp, 24]
	mov	x0, 21495
	movk	x0, 0xa45, lsl 16
	movk	x0, 0xb2f8, lsl 32
	movk	x0, 0x41bb, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 8
	mov	x2, 997
	mul	x0, x0, x2
	sub	x0, x1, x0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L7
	ldrsw	x1, [sp, 140]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x3, x0, x1
	ldrsw	x0, [sp, 140]
	lsl	x1, x0, 2
	adrp	x0, salary
	add	x0, x0, :lo12:salary
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrsw	x1, [sp, 140]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	bl	_Z7ELFhashPc
	str	w0, [sp, 124]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	ldr	w1, [sp, 140]
	str	w1, [x0]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 124]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 128]
	str	x1, [x0, 8]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 124]
	ldr	x2, [sp, 128]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L8
	str	wzr, [sp, 140]
	b	.L9
	str	wzr, [sp, 136]
	b	.L10
	add	x0, sp, 24
	bl	_Z7ELFhashPc
	str	w0, [sp, 124]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 124]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 128]
	b	.L11
	ldr	x0, [sp, 128]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x1, x0, x1
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	ldr	x0, [sp, 128]
	ldr	x0, [x0, 8]
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	cmp	x0, 0
	bne	.L14
	b	.L13
	nop
	ldr	x0, [sp, 128]
	cmp	x0, 0
	beq	.L10
	ldr	x0, [sp, 128]
	ldr	w1, [x0]
	adrp	x0, salary
	add	x0, x0, :lo12:salary
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 136]
	add	w0, w1, w0
	str	w0, [sp, 136]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	add	x2, sp, 24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	ldr	w1, [sp, 136]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret