e:
r:
f:
eric:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L2
	movi	v0.2d, #0
	b	.L3
	mov	w0, 29
	str	w0, [sp, 76]
	b	.L4
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 76]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 0
	bge	.L7
	b	.L6
	nop
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 76]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 60]
	sub	w0, w1, w0
	str	w0, [sp, 72]
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	q0, [x0]
	str	q0, [sp, 16]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	q1, [x0]
	str	q1, [sp, 32]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	bl	__floatsitf
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 32]
	bl	__multf3
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 16]
	bl	__addtf3
	str	q0, [sp, 16]
	ldr	w0, [sp, 72]
	bl	eric
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 16]
	bl	__addtf3
	ldp	x29, x30, [sp], 80
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L10
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	bl	eric
	str	q0, [sp, 16]
	ldr	w0, [sp, 40]
	bl	__floatsitf
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 16]
	bl	__divtf3
	mov	v1.16b, v0.16b
	bl	__addtf3
	str	q0, [sp, 16]
	ldr	w0, [sp, 40]
	bl	__floatsitf
	mov	v1.16b, v0.16b
	ldr	q0, [sp, 16]
	bl	__divtf3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret