base:
print:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L2
	mov	w0, 45
	bl	putchar
	b	.L6
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	bl	print
	adrp	x0, base
	add	x0, x0, :lo12:base
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 44]
	b	.L4
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	bl	print
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L8
	ldr	w0, [sp, 28]
	bl	print
	mov	w0, 10
	bl	putchar
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret