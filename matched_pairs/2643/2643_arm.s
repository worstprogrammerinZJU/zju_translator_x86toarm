n:
vote:
name:
party:
input:
check:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L2
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, name
	add	x1, x1, :lo12:name
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, input
	add	x0, x0, :lo12:input
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	b	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, -1
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L7
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, name
	add	x1, x1, :lo12:name
	add	x0, x0, x1
	bl	gets
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, party
	add	x1, x1, :lo12:party
	add	x0, x0, x1
	bl	gets
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L8
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L9
	adrp	x0, input
	add	x0, x0, :lo12:input
	bl	gets
	bl	check
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmn	w0, #1
	beq	.L10
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L12
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L13
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L14
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, vote
	add	x0, x0, :lo12:vote
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L14
	str	wzr, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L17
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, party
	add	x1, x1, :lo12:party
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret