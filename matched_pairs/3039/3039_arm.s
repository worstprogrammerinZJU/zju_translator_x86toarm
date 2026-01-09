n:
d:
r:
s:
t:
i:
min:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	d8, [sp, 16]
	adrp	x0, d
	add	x2, x0, :lo12:d
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, min
	add	x0, x0, :lo12:min
	mov	x1, 281200098803712
	movk	x1, 0x40df, lsl 48
	fmov	d0, x1
	str	d0, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	mov	w1, 1
	str	w1, [x0]
	b	.L2
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d0, w0
	fmul	d1, d1, d0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	bl	floor
	fcvtzs	w1, d0
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	mul	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	mul	w0, w2, w0
	cmp	w1, w0
	bne	.L3
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	add	w0, w0, 1
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	bl	fabs
	fmov	d8, d0
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w0, w0, #1
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	bl	fabs
	fcmpe	d8, d0
	bgt	.L10
	b	.L12
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
	b	.L3
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	w1, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	bl	fabs
	fmov	d1, d0
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	d0, [x0]
	fcmpe	d1, d0
	bmi	.L11
	b	.L6
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d1, d1, d0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	scvtf	d2, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d2, d0
	fsub	d0, d1, d0
	bl	fabs
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	d0, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w1, [x0]
	adrp	x0, t
	add	x0, x0, :lo12:t
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w1, [x0]
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
	mov	w0, 32767
	cmp	w1, w0
	ble	.L8
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	mov	w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret