count:
s:
ans:
goal:
find:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	wzr, [sp, 20]
	b	.L2
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
	b	.L3
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	ldrsw	x0, [sp, 28]
	ldrb	w2, [x1, x0]
	adrp	x0, s
	add	x4, x0, :lo12:s
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 4]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x4, x0
	add	x0, x0, x3
	ldrb	w0, [x0]
	cmp	w2, w0
	bne	.L10
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L6
	b	.L5
	nop
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L8
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	mov	w1, 60
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	ldr	w1, [sp, 20]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	add	sp, sp, 32
	ret
copy:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L12
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w5, [x0]
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	ldrsw	x0, [sp, 28]
	ldrb	w4, [x1, x0]
	adrp	x0, ans
	add	x3, x0, :lo12:ans
	ldrsw	x2, [sp, 24]
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L13
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	w1, [x0]
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 124]
	b	.L15
	mov	x2, 1200
	mov	w1, 0
	adrp	x0, ans
	add	x0, x0, :lo12:ans
	bl	memset
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 108]
	str	wzr, [sp, 120]
	b	.L16
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L17
	mov	w0, 60
	str	w0, [sp, 112]
	b	.L18
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	wzr, [x0]
	str	wzr, [sp, 120]
	b	.L19
	str	wzr, [sp, 116]
	b	.L20
	ldr	w2, [sp, 116]
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 120]
	bl	find
	str	w0, [sp, 104]
	ldr	w0, [sp, 104]
	cmp	w0, 0
	beq	.L37
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L23
	b	.L22
	nop
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 116]
	cmp	w1, w0
	bne	.L24
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 120]
	bl	copy
	mov	w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	mov	w1, 60
	ldr	w0, [sp, 112]
	sub	w0, w1, w0
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L25
	ldr	w0, [sp, 108]
	cmp	w0, 0
	beq	.L26
	str	wzr, [sp, 120]
	b	.L27
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 116]
	b	.L28
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	ble	.L29
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x1, x0, x1
	add	x0, sp, 16
	bl	strcpy
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	add	x1, sp, 16
	bl	strcpy
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L31
	adrp	x0, ans
	add	x1, x0, :lo12:ans
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L32
	ldr	w0, [sp, 112]
	sub	w0, w0, #1
	str	w0, [sp, 112]
	ldr	w0, [sp, 112]
	cmp	w0, 2
	bgt	.L33
	ldr	w0, [sp, 108]
	cmp	w0, 0
	bne	.L34
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldr	w0, [sp, 100]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L35
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret