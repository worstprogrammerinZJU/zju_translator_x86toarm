n:
d:
k:
cow:
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	wzr, [sp, 100]
	adrp	x0, k
	add	x3, x0, :lo12:k
	adrp	x0, d
	add	x2, x0, :lo12:d
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w1, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	w1, [x0]
	str	wzr, [sp, 108]
	b	.L2
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 108]
	str	w2, [x1, x0]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 108]
	b	.L4
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 104]
	b	.L5
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 92]
	sub	w1, w0, #1
	adrp	x0, cow
	add	x3, x0, :lo12:cow
	sxtw	x2, w1
	ldrsw	x1, [sp, 108]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w0, [sp, 88]
	ldr	w1, [sp, 104]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L7
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w2, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	_Z6cozuheii
	str	w0, [sp, 108]
	b	.L8
	str	wzr, [sp, 96]
	str	wzr, [sp, 104]
	b	.L9
	str	wzr, [sp, 88]
	b	.L10
	ldr	w0, [sp, 88]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	adrp	x0, cow
	add	x3, x0, :lo12:cow
	sxtw	x2, w1
	ldrsw	x1, [sp, 104]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	beq	.L19
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w1, [sp, 88]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L13
	b	.L12
	nop
	ldr	w1, [sp, 88]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L14
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 104]
	cmp	w1, w0
	blt	.L15
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 100]
	cmp	w1, w0
	ble	.L16
	ldr	w0, [sp, 96]
	str	w0, [sp, 100]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldr	w2, [x0]
	add	x0, sp, 24
	bl	_Z4zuhePiii
	ldr	w0, [sp, 108]
	sub	w0, w0, #1
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	cmp	w0, 0
	bgt	.L17
	ldr	w1, [sp, 100]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
_Z4zuhePiii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L21
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	cmp	w1, w0
	bge	.L22
	ldr	w2, [sp, 20]
	ldr	x1, [sp, 24]
	ldr	w0, [sp, 44]
	bl	_Z5equaliPii
	and	w0, w0, 255
	cmp	w0, 1
	bne	.L22
	mov	w0, 1
	b	.L23
	mov	w0, 0
	cmp	w0, 0
	beq	.L24
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L25
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L26
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	add	w2, w1, w0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	sub	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L27
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
_Z5equaliPii:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	x1, [sp]
	str	w2, [sp, 8]
	str	wzr, [sp, 28]
	b	.L29
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w0, [x0]
	add	w1, w0, 1
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L30
	mov	w0, 0
	b	.L31
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L32
	mov	w0, 1
	add	sp, sp, 32
	ret
_Z6cozuheii:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	ldr	w1, [sp, 8]
	cmp	w1, w0
	ble	.L34
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L35
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	sub	w1, w1, w0
	ldr	w0, [sp, 24]
	mul	w1, w1, w0
	ldr	w0, [sp, 28]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L36
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	ret