pow:
bit:
mod:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
	ldr	w2, [sp, 12]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x2, [sp, 28]
	str	w1, [x0, x2, lsl 2]
	ldr	w0, [sp, 12]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, bit
	add	x1, x1, :lo12:bit
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	cmp	w0, 2
	bne	.L2
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L6
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	bl	mod
	str	w0, [sp, 36]
	str	wzr, [sp, 40]
	b	.L7
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L8
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L9
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L11
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L12
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L13
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L14
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L15
	mov	w0, 32
	bl	putchar
	str	wzr, [sp, 40]
	b	.L16
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L17
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L18
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L19
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L20
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L21
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L22
	adrp	x0, bit
	add	x0, x0, :lo12:bit
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L23
	adrp	x0, pow
	add	x0, x0, :lo12:pow
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L24
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret