minWindow:
	stp	x29, x30, [sp, -320]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 32
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	stp	q0, q0, [x0, 128]
	stp	q0, q0, [x0, 160]
	stp	q0, q0, [x0, 192]
	str	q0, [x0, 220]
	str	wzr, [sp, 316]
	str	wzr, [sp, 312]
	b	.L2
	ldrsw	x0, [sp, 312]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 316]
	add	w0, w0, 1
	str	w0, [sp, 316]
	ldrsw	x0, [sp, 312]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 312]
	add	w0, w0, 1
	str	w0, [sp, 312]
	ldrsw	x0, [sp, 312]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	mov	w0, 34465
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 308]
	str	wzr, [sp, 304]
	str	wzr, [sp, 300]
	str	wzr, [sp, 296]
	b	.L5
	ldrsw	x0, [sp, 296]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 296]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 316]
	sub	w0, w0, #1
	str	w0, [sp, 316]
	ldr	w0, [sp, 316]
	cmp	w0, 0
	bne	.L6
	b	.L7
	ldrsw	x0, [sp, 300]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	str	w0, [sp, 300]
	ldrsw	x0, [sp, 300]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bgt	.L8
	ldr	w1, [sp, 296]
	ldr	w0, [sp, 300]
	sub	w0, w1, w0
	add	w0, w0, 1
	ldr	w1, [sp, 308]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 300]
	str	w0, [sp, 304]
	ldr	w1, [sp, 296]
	ldr	w0, [sp, 300]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 308]
	ldrsw	x0, [sp, 300]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 316]
	add	w0, w0, 1
	str	w0, [sp, 316]
	ldr	w0, [sp, 300]
	add	w0, w0, 1
	str	w0, [sp, 300]
	ldr	w0, [sp, 296]
	add	w0, w0, 1
	str	w0, [sp, 296]
	ldrsw	x0, [sp, 296]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	w1, [sp, 308]
	mov	w0, 34465
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	bne	.L11
	mov	x0, 1
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 272]
	ldr	x0, [sp, 272]
	strb	wzr, [x0]
	ldr	x0, [sp, 272]
	b	.L15
	ldr	w0, [sp, 308]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 280]
	str	wzr, [sp, 292]
	b	.L13
	ldr	w1, [sp, 292]
	ldr	w0, [sp, 304]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 292]
	ldr	x2, [sp, 280]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 292]
	add	w0, w0, 1
	str	w0, [sp, 292]
	ldr	w1, [sp, 292]
	ldr	w0, [sp, 308]
	cmp	w1, w0
	blt	.L14
	ldrsw	x0, [sp, 308]
	ldr	x1, [sp, 280]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 280]
	ldp	x29, x30, [sp], 320
	ret