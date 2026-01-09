n:
m:
x:
y:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	xzr, [sp, 32]
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d0, w0
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fdiv	d0, d1, d0
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	d0, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	scvtf	d0, w0
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fdiv	d0, d1, d0
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	ldr	w0, [sp, 44]
	scvtf	d1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	fmul	d1, d1, d0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d0, [x0]
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fcvtzs	w0, d0
	scvtf	d0, w0
	ldr	d1, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fadd	d0, d0, d0
	fcvtzs	w0, d0
	cmp	w0, 1
	bne	.L3
	fmov	d1, 1.0e+0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	ldr	d1, [sp, 32]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	b	.L4
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L5
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	ldr	d0, [sp, 32]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret