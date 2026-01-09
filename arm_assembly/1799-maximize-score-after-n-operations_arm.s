	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	b	.L2
	ldr	w0, [sp, 8]
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 12]
	add	sp, sp, 32
	ret
max:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 16
	ret
func:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	str	w2, [sp, 64]
	str	x3, [sp, 56]
	str	x4, [sp, 48]
	str	w5, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 100]
	cmp	w1, w0
	ble	.L8
	mov	w0, 0
	b	.L9
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L10
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L9
	str	wzr, [sp, 108]
	b	.L11
	ldr	w0, [sp, 108]
	ldr	w1, [sp, 64]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L19
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 104]
	b	.L14
	ldr	w0, [sp, 104]
	ldr	w1, [sp, 64]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 108]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 104]
	mov	w2, 1
	lsl	w0, w2, w0
	orr	w0, w1, w0
	ldr	w1, [sp, 64]
	orr	w0, w1, w0
	str	w0, [sp, 96]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 68]
	mul	w19, w1, w0
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	ldr	w5, [sp, 44]
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	w2, [sp, 96]
	mov	w1, w0
	ldr	x0, [sp, 72]
	bl	func
	add	w0, w19, w0
	str	w0, [sp, 92]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	ldr	w1, [sp, 92]
	mov	w0, w2
	bl	max
	str	w0, [x19]
	b	.L16
	nop
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L17
	b	.L13
	nop
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L18
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
maxScore:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 88]
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 108]
	b	.L22
	ldrsw	x0, [sp, 88]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L23
	str	wzr, [sp, 104]
	b	.L24
	str	wzr, [sp, 100]
	b	.L25
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w3, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	add	x19, x1, x0
	mov	w1, w3
	mov	w0, w2
	bl	greatestCommonDivisor
	str	w0, [x19]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L27
	mov	x0, 65536
	bl	malloc
	str	x0, [sp, 64]
	str	wzr, [sp, 96]
	b	.L28
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	mov	w1, -1
	str	w1, [x0]
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	ldr	w1, [sp, 96]
	mov	w0, 16383
	cmp	w1, w0
	ble	.L29
	ldr	w5, [sp, 88]
	ldr	x4, [sp, 72]
	ldr	x3, [sp, 64]
	mov	w2, 0
	mov	w1, 1
	ldr	x0, [sp, 40]
	bl	func
	str	w0, [sp, 60]
	str	wzr, [sp, 92]
	b	.L30
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L31
	ldr	x0, [sp, 72]
	bl	free
	ldr	x0, [sp, 64]
	bl	free
	ldr	w0, [sp, 60]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret