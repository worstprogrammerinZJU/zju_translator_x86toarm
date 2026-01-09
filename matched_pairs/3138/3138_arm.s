S:
T:
M:
i:
j:
s:
team:
flag:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, M
	add	x3, x0, :lo12:M
	adrp	x0, T
	add	x2, x0, :lo12:T
	adrp	x0, S
	add	x1, x0, :lo12:S
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	wzr, [x0]
	b	.L3
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	ldr	w3, [sp, 28]
	add	w2, w1, w0
	adrp	x0, team
	add	x0, x0, :lo12:team
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w2, [sp, 28]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L4
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	wzr, [x0]
	b	.L5
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 24]
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L6
	ldr	w2, [sp, 28]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w2, [sp, 28]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L7
	adrp	x0, i
	add	x0, x0, :lo12:i
	mov	w1, 1
	str	w1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	wzr, [x0]
	b	.L8
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, team
	add	x0, x0, :lo12:team
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w2, [x0]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L10
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, j
	add	x1, x1, :lo12:j
	str	w2, [x1]
	adrp	x1, s
	add	x1, x1, :lo12:s
	ldr	w1, [x1]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, M
	add	x3, x0, :lo12:M
	adrp	x0, T
	add	x2, x0, :lo12:T
	adrp	x0, S
	add	x1, x0, :lo12:S
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L11
	adrp	x0, T
	add	x0, x0, :lo12:T
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L11
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret