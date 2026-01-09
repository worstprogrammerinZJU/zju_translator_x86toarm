K:
argu:
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	wzr, [sp, 124]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldrsw	x1, [sp, 124]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, argu
	add	x1, x1, :lo12:argu
	add	x3, x0, x1
	ldrsw	x1, [sp, 124]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, argu
	add	x1, x1, :lo12:argu
	add	x0, x0, x1
	add	x0, x0, 4
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, argu
	add	x2, x0, :lo12:argu
	ldrsw	x1, [sp, 124]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 1
	str	w1, [x0, 8]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	sub	w1, w0, #1
	adrp	x0, argu
	add	x2, x0, :lo12:argu
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 4]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 124]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldrsw	x1, [sp, 124]
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 12
	adrp	x0, argu
	add	x0, x0, :lo12:argu
	bl	qsort
	add	x0, sp, 120
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	ldr	w0, [sp, 120]
	mov	w1, w0
	ldr	w0, [sp, 124]
	bl	HEAP
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret
ADJUST:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	ldr	w0, [sp, 12]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
	b	.L6
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L7
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 28]
	asr	w3, w0, 1
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L10
	b	.L9
	nop
	ldr	w0, [sp, 28]
	asr	w1, w0, 1
	adrp	x0, K
	add	x0, x0, :lo12:K
	sxtw	x1, w1
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	ret
HEAP:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	b	.L13
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	bl	ADJUST
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L14
	ldr	w0, [sp, 24]
	str	w0, [sp, 44]
	b	.L15
	str	wzr, [sp, 40]
	b	.L16
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w2, [x0, 4]
	adrp	x0, argu
	add	x3, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w3, [x0, 4]
	adrp	x0, argu
	add	x4, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0, 8]
	mul	w0, w3, w0
	cmp	w2, w0
	beq	.L21
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L19
	b	.L18
	nop
	adrp	x0, argu
	add	x2, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w2, [x0, 4]
	adrp	x0, argu
	add	x3, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w0, [x0, 4]
	add	w1, w2, w0
	adrp	x0, K
	add	x0, x0, :lo12:K
	str	w1, [x0, 4]
	adrp	x0, argu
	add	x2, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	add	w2, w0, 1
	adrp	x0, argu
	add	x3, x0, :lo12:argu
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	ldr	w1, [sp, 28]
	mov	w0, 1
	bl	ADJUST
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L20
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
cmp:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp, 8]
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	ldr	x1, [sp]
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L23
	mov	w0, -1
	b	.L26
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L25
	mov	w0, 1
	b	.L26
	mov	w0, 0
	add	sp, sp, 48
	ret