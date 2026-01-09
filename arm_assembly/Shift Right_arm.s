_Z10shiftRightPiii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 16]
	str	wzr, [sp, 44]
	b	.L2
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	sub	w1, w0, #1
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	cmp	w0, w1
	blt	.L3
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	b	.L4
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldr	w0, [sp, 20]
	lsl	w1, w0, 1
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	sub	w1, w0, #1
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 20]
	lsl	w1, w0, 1
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 40]
	cmp	w0, w1
	blt	.L5
	str	wzr, [sp, 36]
	b	.L6
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 36]
	cmp	w0, w1
	blt	.L7
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	mov	x12, 40064
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 36864
	add	x0, x0, 3188
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36864
	add	x0, x0, 3184
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 7292]
	b	.L9
	add	x1, sp, 24
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7292]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32768
	ldr	w0, [x0, 7292]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7292]
	add	x0, sp, 32768
	ldr	w0, [x0, 7284]
	add	x1, sp, 32768
	ldr	w1, [x1, 7292]
	cmp	w1, w0
	blt	.L10
	add	x0, sp, 32768
	ldr	w1, [x0, 7284]
	add	x0, sp, 32768
	ldr	w2, [x0, 7280]
	add	x0, sp, 24
	bl	_Z10shiftRightPiii
	add	x0, sp, 32768
	str	wzr, [x0, 7288]
	b	.L11
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7288]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x0, sp, 32768
	ldr	w0, [x0, 7288]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7288]
	add	x0, sp, 32768
	ldr	w0, [x0, 7284]
	add	x1, sp, 32768
	ldr	w1, [x1, 7288]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 40064
	add	sp, sp, x12
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	add	x0, sp, 44
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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