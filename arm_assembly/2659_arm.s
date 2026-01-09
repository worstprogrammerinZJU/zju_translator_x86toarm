field:
x:
y:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x3, x0
	adrp	x0, y
	add	x2, x0, :lo12:y
	adrp	x0, x
	add	x1, x0, :lo12:x
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	add	x3, sp, 20
	add	x2, sp, 24
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 36]
	sub	w3, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	mov	w0, w3
	bl	_Z10notinrangeiii
	b	.L4
	ldr	w0, [sp, 36]
	sub	w3, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	mov	w0, w3
	bl	_Z7inrangeiii
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L6
	str	wzr, [sp, 32]
	b	.L7
	ldr	w1, [sp, 36]
	ldr	w2, [sp, 32]
	adrp	x0, field
	add	x3, x0, :lo12:field
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z7inrangeiii:
	sub	sp, sp, #48
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bge	.L13
	str	wzr, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L14
	str	wzr, [sp, 28]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L15
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	str	w0, [sp, 32]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L16
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	str	w0, [sp, 24]
	str	wzr, [sp, 44]
	b	.L17
	str	wzr, [sp, 40]
	b	.L18
	adrp	x0, field
	add	x3, x0, :lo12:field
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L20
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	b	.L21
	str	wzr, [sp, 40]
	b	.L22
	adrp	x0, field
	add	x3, x0, :lo12:field
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L24
	str	wzr, [sp, 40]
	b	.L25
	str	wzr, [sp, 44]
	b	.L26
	adrp	x0, field
	add	x3, x0, :lo12:field
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L27
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L28
	ldr	w0, [sp, 24]
	str	w0, [sp, 40]
	b	.L29
	str	wzr, [sp, 44]
	b	.L30
	adrp	x0, field
	add	x3, x0, :lo12:field
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L31
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L32
	nop
	nop
	add	sp, sp, 48
	ret
_Z10notinrangeiii:
	sub	sp, sp, #48
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bge	.L34
	str	wzr, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L35
	str	wzr, [sp, 28]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L36
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	str	w0, [sp, 32]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L37
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w0, [sp, 36]
	str	w0, [sp, 44]
	b	.L38
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	b	.L39
	adrp	x0, field
	add	x3, x0, :lo12:field
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L40
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L41
	nop
	nop
	add	sp, sp, 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L44
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L44
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret