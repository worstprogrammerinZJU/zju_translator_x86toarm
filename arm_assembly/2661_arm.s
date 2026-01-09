main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 140]
	fmov	d0, 2.0e+0
	bl	log
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	str	d0, [sp, 128]
	str	xzr, [sp, 120]
	str	wzr, [sp, 20]
	b	.L2
	ldr	w0, [sp, 140]
	add	w1, w0, 1
	str	w1, [sp, 140]
	scvtf	d0, w0
	bl	log
	fmov	d1, d0
	ldr	d0, [sp, 120]
	fadd	d0, d0, d1
	str	d0, [sp, 120]
	ldr	d1, [sp, 120]
	ldr	d0, [sp, 128]
	fcmpe	d1, d0
	bmi	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 140]
	sub	w2, w0, #2
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	d0, [sp, 128]
	fadd	d0, d0, d0
	str	d0, [sp, 128]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 21
	ble	.L3
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	ldr	w0, [sp, 20]
	sub	w0, w0, #1960
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret