prime:
q:
num:
add:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 12]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L3
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 5
	str	w0, [sp, 28]
	b	.L7
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L8
	ldr	w1, [sp, 24]
	adrp	x0, prime
	add	x0, x0, :lo12:prime
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L19
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L11
	b	.L10
	nop
	ldr	w1, [sp, 24]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L12
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w2, [x1]
	adrp	x1, prime
	add	x1, x1, :lo12:prime
	sxtw	x0, w0
	ldr	w2, [sp, 28]
	str	w2, [x1, x0, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L13
	str	wzr, [sp, 28]
	b	.L14
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	bl	add
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L15
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L16
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1228
	ble	.L17
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret