n:
A:
B:
_Z3caliii:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldrsw	x2, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	str	w0, [sp, 28]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldrsw	x1, [sp, 12]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldrsw	x2, [sp, 8]
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldrsw	x1, [sp, 4]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 4]
	add	w3, w0, 1
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	adrp	x0, B
	add	x0, x0, :lo12:B
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L3
	str	wzr, [sp, 28]
	b	.L4
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, A
	add	x0, x0, :lo12:A
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L6
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L7
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w2, [sp, 24]
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3caliii
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 2
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 20]
	lsl	w0, w0, 1
	str	w0, [sp, 20]
	str	wzr, [sp, 28]
	b	.L9
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L10
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 28]
	b	.L12
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L13
	mov	w0, 10
	bl	putchar
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret