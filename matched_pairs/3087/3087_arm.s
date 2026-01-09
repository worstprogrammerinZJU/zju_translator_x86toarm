n:
str:
change:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L2
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	sxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	sxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	add	sp, sp, 32
	ret
main:
	sub	sp, sp, #800
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 788
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 792]
	b	.L5
	str	wzr, [sp, 796]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 536
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, sp, 536
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 536
	mov	x1, x0
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcpy
	b	.L6
	add	x1, sp, 280
	add	x0, sp, 536
	bl	change
	add	x1, sp, 280
	add	x0, sp, 536
	bl	strcpy
	add	x2, sp, 536
	adrp	x0, str
	add	x1, x0, :lo12:str
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, -1
	str	w0, [sp, 796]
	b	.L8
	ldr	w0, [sp, 796]
	add	w0, w0, 1
	str	w0, [sp, 796]
	add	x1, sp, 536
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	w2, [sp, 796]
	ldr	w1, [sp, 792]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 792]
	add	w0, w0, 1
	str	w0, [sp, 792]
	ldr	w0, [sp, 788]
	ldr	w1, [sp, 792]
	cmp	w1, w0
	ble	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 800
	ret