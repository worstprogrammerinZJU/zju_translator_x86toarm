main:
	mov	x12, 7056
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 7040]
	add	x0, sp, 16
	mov	x1, 7008
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 3
	strh	w0, [sp, 16]
	mov	w0, 5
	str	w0, [sp, 7052]
	b	.L2
	str	wzr, [sp, 7048]
	b	.L3
	ldrsw	x0, [sp, 7048]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7052]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 7048]
	add	w0, w0, 1
	str	w0, [sp, 7048]
	ldr	w1, [sp, 7048]
	ldr	w0, [sp, 7040]
	cmp	w1, w0
	blt	.L6
	b	.L5
	nop
	ldr	w1, [sp, 7048]
	ldr	w0, [sp, 7040]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 7040]
	add	w1, w0, 1
	str	w1, [sp, 7040]
	ldr	w1, [sp, 7052]
	sxth	w2, w1
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 16
	strh	w2, [x1, x0]
	ldr	w0, [sp, 7052]
	add	w0, w0, 2
	str	w0, [sp, 7052]
	ldr	w1, [sp, 7052]
	mov	w0, 32678
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 4096
	add	x0, x0, 2928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L9
	str	wzr, [sp, 7036]
	ldr	w0, [sp, 7024]
	cmp	w0, 4
	bne	.L10
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L11
	str	wzr, [sp, 7052]
	b	.L12
	ldr	w0, [sp, 7024]
	ldrsw	x1, [sp, 7052]
	lsl	x1, x1, 1
	add	x2, sp, 16
	ldrsh	w1, [x2, x1]
	sub	w0, w0, w1
	str	w0, [sp, 7032]
	ldr	w0, [sp, 7052]
	str	w0, [sp, 7044]
	ldr	w0, [sp, 7040]
	sub	w0, w0, #1
	str	w0, [sp, 7048]
	b	.L13
	ldr	w1, [sp, 7044]
	ldr	w0, [sp, 7048]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 7028]
	ldrsw	x0, [sp, 7028]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7032]
	cmp	w0, w1
	ble	.L14
	ldr	w0, [sp, 7028]
	add	w0, w0, 1
	str	w0, [sp, 7044]
	b	.L13
	ldrsw	x0, [sp, 7028]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7032]
	cmp	w0, w1
	bge	.L15
	ldr	w0, [sp, 7028]
	sub	w0, w0, #1
	str	w0, [sp, 7048]
	b	.L13
	ldr	w0, [sp, 7036]
	add	w0, w0, 1
	str	w0, [sp, 7036]
	b	.L16
	ldr	w1, [sp, 7044]
	ldr	w0, [sp, 7048]
	cmp	w1, w0
	ble	.L17
	ldr	w0, [sp, 7052]
	add	w0, w0, 1
	str	w0, [sp, 7052]
	ldrsw	x0, [sp, 7052]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	lsl	w1, w0, 1
	ldr	w0, [sp, 7024]
	cmp	w1, w0
	ble	.L18
	ldr	w1, [sp, 7036]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 4096
	add	x0, x0, 2928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 7024]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 7056
	add	sp, sp, x12
	ret