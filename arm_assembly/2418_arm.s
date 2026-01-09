link:
num:
posi:
n:
m:
tree:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 28]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 32]
	b	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L6
	b	.L5
	nop
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L7
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 32]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	x0, [sp, 32]
	str	w1, [x0]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	str	x1, [x0, 8]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x2, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	b	.L8
	ldr	x0, [sp, 32]
	ldr	w3, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	bl	gets
	cmp	w0, 0
	bne	.L9
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	bl	qsort
	str	wzr, [sp, 44]
	b	.L10
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	mov	x1, x2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
ELFhash:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L15
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
	beq	.L16
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
	bne	.L17
	ldr	x0, [sp, 24]
	mov	x1, 38987
	movk	x1, 0x5499, lsl 16
	movk	x1, 0x12b3, lsl 32
	movk	x1, 0xa323, lsl 48
	umulh	x1, x0, x1
	sub	x2, x0, x1
	lsr	x2, x2, 1
	add	x1, x1, x2
	lsr	x1, x1, 13
	mov	x2, 10007
	mul	x1, x1, x2
	sub	x1, x0, x1
	mov	w0, w1
	add	sp, sp, 32
	ret
cmp:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	ldp	x29, x30, [sp], 48
	ret