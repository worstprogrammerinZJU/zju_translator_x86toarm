main:
	mov	x12, 40176
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7404]
	add	x0, sp, 16
	mov	x1, 40144
	mov	x2, x1
	mov	w1, 0
	bl	memset
	b	.L2
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7404]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	add	x0, sp, 32768
	ldr	w1, [x0, 7404]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 32768
	ldr	w0, [x0, 7404]
	add	x1, sp, 32768
	str	w0, [x1, 7400]
	add	x0, sp, 32768
	ldr	w0, [x0, 7404]
	add	x1, sp, 32768
	str	w0, [x1, 7396]
	b	.L4
	add	x0, sp, 32768
	ldr	w2, [x0, 7400]
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
	add	x0, sp, 32768
	ldr	w0, [x0, 7396]
	add	w0, w0, w1
	add	x1, sp, 32768
	str	w0, [x1, 7396]
	add	x0, sp, 32768
	ldr	w0, [x0, 7400]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 7400]
	add	x0, sp, 32768
	ldr	w0, [x0, 7400]
	cmp	w0, 0
	bne	.L5
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7396]
	lsl	x0, x0, 2
	add	x1, sp, 16
	mov	w2, 1
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldr	w0, [x0, 7404]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7404]
	add	x0, sp, 32768
	ldr	w1, [x0, 7404]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L6
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 40176
	add	sp, sp, x12
	ret