n:
count:
flag:
G:
_Z3dfsi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, G
	add	x0, x0, :lo12:G
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 40]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	w1, [x0]
	b	.L2
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	bl	_Z3dfsi
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L4
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	mov	x2, 800
	mov	w1, 0
	adrp	x0, G
	add	x0, x0, :lo12:G
	bl	memset
	str	wzr, [sp, 36]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L7
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	w0, [sp, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x2, [sp, 24]
	str	x2, [x0, x1, lsl 3]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	sub	w1, w0, #1
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	w0, [sp, 16]
	sub	w1, w0, #1
	adrp	x0, G
	add	x0, x0, :lo12:G
	sxtw	x1, w1
	ldr	x2, [sp, 24]
	str	x2, [x0, x1, lsl 3]
	bl	getchar
	cmp	w0, 32
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L8
	str	wzr, [sp, 44]
	b	.L11
	mov	x2, 100
	mov	w1, 0
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	bl	memset
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 44]
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	wzr, [x0]
	str	wzr, [sp, 40]
	b	.L12
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L15
	b	.L14
	nop
	ldr	w0, [sp, 40]
	bl	_Z3dfsi
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L16
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L17
	ldr	w1, [sp, 36]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret