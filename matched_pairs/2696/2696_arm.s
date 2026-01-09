a:
b:
c:
d:
e:
f:
g:
h:
I:
fun:
mod:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	sub	sp, sp, #48
	stp	x29, x30, [sp, 16]
	add	x29, sp, 16
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L5
	adrp	x0, I
	add	x0, x0, :lo12:I
	str	x0, [sp, 8]
	adrp	x0, h
	add	x0, x0, :lo12:h
	str	x0, [sp]
	adrp	x0, g
	add	x7, x0, :lo12:g
	adrp	x0, f
	add	x6, x0, :lo12:f
	adrp	x0, e
	add	x5, x0, :lo12:e
	adrp	x0, d
	add	x4, x0, :lo12:d
	adrp	x0, c
	add	x3, x0, :lo12:c
	adrp	x0, b
	add	x2, x0, :lo12:b
	adrp	x0, a
	add	x1, x0, :lo12:a
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [x0]
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	str	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w1, [x0]
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	str	w1, [x0, 4]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w1, [x0]
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	str	w1, [x0, 8]
	mov	w0, 3
	str	w0, [sp, 40]
	b	.L6
	ldr	w0, [sp, 40]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	w0, [sp, 40]
	sub	w2, w0, #2
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x2, w2
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	w0, [x0]
	mul	w0, w2, w0
	add	w1, w1, w0
	ldr	w0, [sp, 40]
	sub	w2, w0, #3
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x2, w2
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	mul	w0, w2, w0
	sub	w2, w1, w0
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	mod
	mov	w2, w0
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	b	.L8
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	w0, [sp, 40]
	sub	w2, w0, #2
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x2, w2
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	mul	w0, w2, w0
	sub	w1, w1, w0
	ldr	w0, [sp, 40]
	sub	w2, w0, #3
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x2, w2
	ldr	w2, [x0, x2, lsl 2]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	w0, [x0]
	mul	w0, w2, w0
	add	w2, w1, w0
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	mod
	mov	w2, w0
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, I
	add	x0, x0, :lo12:I
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L9
	adrp	x0, I
	add	x0, x0, :lo12:I
	ldr	w1, [x0]
	adrp	x0, fun
	add	x0, x0, :lo12:fun
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 48
	ret