main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	str	wzr, [sp, 196]
	stp	xzr, xzr, [sp, 32]
	add	x0, sp, 48
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	fmov	x1, d0
	str	x1, [x0, 126]
	b	.L2
	str	wzr, [sp, 200]
	str	wzr, [sp, 216]
	b	.L3
	ldrsw	x0, [sp, 216]
	add	x1, sp, 32
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	w1, [sp, 216]
	ldr	w0, [sp, 196]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 216]
	mov	w0, 4
	str	w0, [sp, 212]
	b	.L5
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L6
	mov	w1, 5
	ldr	w0, [sp, 216]
	sub	w1, w1, w0
	ldr	w0, [sp, 188]
	mul	w0, w1, w0
	sub	w0, w0, #1
	str	w0, [sp, 220]
	b	.L7
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 212]
	sub	w2, w0, #1
	str	w2, [sp, 212]
	sub	w1, w1, #48
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w1, [sp, 200]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 216]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	add	w0, w2, w0
	sub	w0, w0, #48
	str	w0, [sp, 200]
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	w0, [sp, 216]
	cmp	w0, 5
	ble	.L8
	mov	w0, 4
	str	w0, [sp, 196]
	mov	w0, 2
	str	w0, [sp, 216]
	b	.L9
	ldr	w0, [sp, 196]
	str	w0, [sp, 212]
	b	.L10
	ldrsw	x0, [sp, 212]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 200]
	mul	w0, w0, w1
	str	w0, [sp, 192]
	ldr	w0, [sp, 212]
	str	w0, [sp, 208]
	ldr	w1, [sp, 192]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	ldr	w0, [sp, 208]
	add	w1, w0, 1
	str	w1, [sp, 208]
	and	w2, w2, 255
	sxtw	x0, w0
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 192]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 192]
	b	.L11
	ldrsw	x0, [sp, 208]
	add	x1, sp, 32
	ldrb	w3, [x1, x0]
	ldr	w1, [sp, 192]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	and	w0, w2, 255
	add	w0, w3, w0
	and	w2, w0, 255
	ldrsw	x0, [sp, 208]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 208]
	add	w1, w0, 1
	str	w1, [sp, 208]
	str	w0, [sp, 204]
	b	.L12
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 204]
	add	x2, sp, 32
	ldrb	w2, [x2, x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	and	w0, w0, 255
	ldr	w2, [sp, 204]
	add	w3, w2, 1
	add	w0, w1, w0
	and	w2, w0, 255
	sxtw	x0, w3
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w1, [sp, 204]
	add	w0, w1, 1
	str	w0, [sp, 204]
	sxtw	x0, w1
	add	x2, sp, 32
	ldrb	w2, [x2, x0]
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w3, w0, 3
	mov	w0, w3
	lsl	w0, w0, 2
	add	w0, w0, w3
	lsl	w0, w0, 1
	sub	w0, w2, w0
	and	w2, w0, 255
	sxtw	x0, w1
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 204]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 9
	bhi	.L13
	ldr	w1, [sp, 204]
	ldr	w0, [sp, 196]
	cmp	w1, w0
	ble	.L14
	ldr	w0, [sp, 204]
	str	w0, [sp, 196]
	ldr	w0, [sp, 192]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 192]
	ldr	w0, [sp, 192]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	ldr	w1, [sp, 208]
	cmp	w1, w0
	ble	.L16
	ldr	w0, [sp, 208]
	sub	w0, w0, #1
	str	w0, [sp, 196]
	ldr	w0, [sp, 212]
	sub	w0, w0, #1
	str	w0, [sp, 212]
	ldr	w0, [sp, 212]
	cmp	w0, 0
	bge	.L17
	ldr	w0, [sp, 216]
	add	w0, w0, 1
	str	w0, [sp, 216]
	ldr	w0, [sp, 188]
	ldr	w1, [sp, 216]
	cmp	w1, w0
	ble	.L18
	str	wzr, [sp, 212]
	b	.L19
	ldrsw	x0, [sp, 212]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L33
	ldr	w0, [sp, 212]
	add	w0, w0, 1
	str	w0, [sp, 212]
	ldr	w1, [sp, 212]
	ldr	w0, [sp, 196]
	cmp	w1, w0
	ble	.L22
	b	.L21
	nop
	ldr	w0, [sp, 212]
	sub	w0, w0, #1
	str	w0, [sp, 212]
	ldr	w1, [sp, 220]
	ldr	w0, [sp, 196]
	cmp	w1, w0
	ble	.L23
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 220]
	str	w0, [sp, 208]
	b	.L24
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 208]
	sub	w0, w0, #1
	str	w0, [sp, 208]
	ldr	w1, [sp, 208]
	ldr	w0, [sp, 196]
	cmp	w1, w0
	bgt	.L25
	ldr	w0, [sp, 196]
	str	w0, [sp, 216]
	b	.L26
	ldr	w1, [sp, 216]
	ldr	w0, [sp, 212]
	cmp	w1, w0
	bgt	.L27
	ldr	w1, [sp, 216]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	ble	.L34
	ldr	w1, [sp, 216]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	bne	.L29
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldrsw	x0, [sp, 216]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 216]
	sub	w0, w0, #1
	str	w0, [sp, 216]
	ldr	w0, [sp, 216]
	cmp	w0, 0
	bge	.L30
	b	.L28
	nop
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x1, sp, 188
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L31
	mov	w0, 0
	ldp	x29, x30, [sp], 224
	ret