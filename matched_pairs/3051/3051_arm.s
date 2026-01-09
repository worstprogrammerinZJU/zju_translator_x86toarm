w:
h:
num:
max:
farm:
_Z3dfsii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	w1, [x0]
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 46
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L2
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L3
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L4
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L8
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, farm
	add	x1, x1, :lo12:farm
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L9
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L10
	str	wzr, [sp, 24]
	b	.L11
	adrp	x0, farm
	add	x3, x0, :lo12:farm
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 42
	bne	.L12
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	wzr, [x0]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [x0]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret