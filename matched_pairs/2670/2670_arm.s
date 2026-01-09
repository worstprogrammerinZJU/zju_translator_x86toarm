stone:
chest:
link:
num:
n:
m:
che:
flag1:
flag2:
main:
	stp	x29, x30, [sp, -352]!
	mov	x29, sp
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 348]
	b	.L3
	ldrsw	x1, [sp, 348]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, stone
	add	x1, x1, :lo12:stone
	add	x0, x0, x1
	bl	gets
	ldr	w0, [sp, 348]
	add	w0, w0, 1
	str	w0, [sp, 348]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 348]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 344]
	b	.L5
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 340]
	str	wzr, [sp, 336]
	str	wzr, [sp, 332]
	b	.L6
	ldrsw	x0, [sp, 340]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 44
	bne	.L7
	adrp	x0, link
	add	x4, x0, :lo12:link
	ldrsw	x3, [sp, 332]
	ldrsw	x1, [sp, 344]
	ldrsw	x2, [sp, 336]
	mov	x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x2
	lsl	x1, x1, 4
	sub	x1, x1, x2
	lsl	x1, x1, 1
	add	x0, x0, x1
	add	x0, x4, x0
	add	x0, x0, x3
	strb	wzr, [x0]
	ldr	w0, [sp, 336]
	add	w0, w0, 1
	str	w0, [sp, 336]
	str	wzr, [sp, 332]
	ldr	w0, [sp, 340]
	add	w0, w0, 1
	str	w0, [sp, 340]
	b	.L8
	ldr	w0, [sp, 332]
	add	w1, w0, 1
	str	w1, [sp, 332]
	ldrsw	x1, [sp, 340]
	add	x2, sp, 24
	ldrb	w5, [x2, x1]
	adrp	x1, link
	add	x4, x1, :lo12:link
	sxtw	x3, w0
	ldrsw	x1, [sp, 344]
	ldrsw	x2, [sp, 336]
	mov	x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x2
	lsl	x1, x1, 4
	sub	x1, x1, x2
	lsl	x1, x1, 1
	add	x0, x0, x1
	add	x0, x4, x0
	add	x0, x0, x3
	mov	w1, w5
	strb	w1, [x0]
	ldr	w0, [sp, 340]
	add	w0, w0, 1
	str	w0, [sp, 340]
	ldrsw	x0, [sp, 340]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	bne	.L9
	adrp	x0, link
	add	x4, x0, :lo12:link
	ldrsw	x3, [sp, 332]
	ldrsw	x1, [sp, 344]
	ldrsw	x2, [sp, 336]
	mov	x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x2
	lsl	x1, x1, 4
	sub	x1, x1, x2
	lsl	x1, x1, 1
	add	x0, x0, x1
	add	x0, x4, x0
	add	x0, x0, x3
	strb	wzr, [x0]
	ldr	w0, [sp, 336]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 332]
	ldr	w0, [sp, 340]
	add	w0, w0, 2
	str	w0, [sp, 340]
	b	.L10
	ldr	w0, [sp, 332]
	add	w1, w0, 1
	str	w1, [sp, 332]
	ldrsw	x1, [sp, 340]
	add	x2, sp, 24
	ldrb	w4, [x2, x1]
	adrp	x1, chest
	add	x3, x1, :lo12:chest
	sxtw	x2, w0
	ldrsw	x1, [sp, 344]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 340]
	add	w0, w0, 1
	str	w0, [sp, 340]
	ldrsw	x0, [sp, 340]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L11
	adrp	x0, chest
	add	x3, x0, :lo12:chest
	ldrsw	x2, [sp, 332]
	ldrsw	x1, [sp, 344]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldrsw	x1, [sp, 344]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, chest
	add	x1, x1, :lo12:chest
	add	x2, x0, x1
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 344]
	str	w0, [sp, 328]
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 344]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 344]
	cmp	w1, w0
	blt	.L13
	adrp	x0, che
	add	x0, x0, :lo12:che
	mov	w1, 1
	str	w1, [x0]
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	ldrsw	x1, [sp, 328]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, flag2
	add	x0, x0, :lo12:flag2
	ldrsw	x1, [sp, 328]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 328]
	bl	dfs
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	x2, 400
	mov	w1, 0
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	bl	memset
	mov	x2, 400
	mov	w1, 0
	adrp	x0, flag2
	add	x0, x0, :lo12:flag2
	bl	memset
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L14
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 352
	ret
dfs:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L17
	str	wzr, [sp, 40]
	b	.L18
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	lsl	x1, x1, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	ldrsw	x2, [sp, 28]
	mov	x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	lsl	x0, x0, 3
	sub	x0, x0, x2
	lsl	x0, x0, 1
	add	x1, x1, x0
	adrp	x0, link
	add	x0, x0, :lo12:link
	add	x2, x1, x0
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, stone
	add	x1, x1, :lo12:stone
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L31
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L21
	b	.L20
	nop
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L22
	str	wzr, [sp, 40]
	b	.L23
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L24
	ldrsw	x0, [sp, 44]
	mov	x1, x0
	lsl	x1, x1, 4
	sub	x1, x1, x0
	lsl	x0, x1, 1
	mov	x1, x0
	ldrsw	x2, [sp, 28]
	mov	x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	lsl	x0, x0, 3
	sub	x0, x0, x2
	lsl	x0, x0, 1
	add	x1, x1, x0
	adrp	x0, link
	add	x0, x0, :lo12:link
	add	x2, x1, x0
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, chest
	add	x1, x1, :lo12:chest
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L24
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	ldrsw	x1, [sp, 40]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	bl	dfs
	cmn	w0, #1
	bne	.L25
	mov	w0, -1
	b	.L26
	adrp	x0, flag2
	add	x0, x0, :lo12:flag2
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L27
	adrp	x0, che
	add	x0, x0, :lo12:che
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, che
	add	x0, x0, :lo12:che
	str	w1, [x0]
	adrp	x0, flag2
	add	x0, x0, :lo12:flag2
	ldrsw	x1, [sp, 40]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	ldrsw	x1, [sp, 40]
	str	wzr, [x0, x1, lsl 2]
	b	.L28
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L29
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L22
	mov	w0, -1
	b	.L26
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L30
	adrp	x0, che
	add	x0, x0, :lo12:che
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 48
	ret