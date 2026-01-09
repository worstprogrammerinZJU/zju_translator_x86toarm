Hprime:
q:
HSprime:
_Z6hprimev:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #3440
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, 3408
	movk	x1, 0x3, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 5
	add	x1, sp, 196608
	str	w0, [x1, 3436]
	b	.L2
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3436]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L11
	add	x0, sp, 196608
	ldr	w0, [x0, 3436]
	lsl	w0, w0, 2
	add	x1, sp, 196608
	str	w0, [x1, 3428]
	add	x0, sp, 196608
	ldr	w0, [x0, 3436]
	mul	w0, w0, w0
	add	x1, sp, 196608
	str	w0, [x1, 3432]
	b	.L5
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3432]
	add	x1, sp, 16
	mov	w2, 1
	strb	w2, [x1, x0]
	add	x0, sp, 196608
	ldr	w1, [x0, 3432]
	add	x0, sp, 196608
	ldr	w0, [x0, 3428]
	add	w0, w1, w0
	add	x1, sp, 196608
	str	w0, [x1, 3432]
	add	x0, sp, 196608
	ldr	w1, [x0, 3432]
	mov	w0, 3407
	movk	w0, 0x3, lsl 16
	cmp	w1, w0
	ble	.L6
	b	.L4
	nop
	add	x0, sp, 196608
	ldr	w0, [x0, 3436]
	add	w0, w0, 4
	add	x1, sp, 196608
	str	w0, [x1, 3436]
	add	x0, sp, 196608
	ldr	w0, [x0, 3436]
	cmp	w0, 449
	ble	.L7
	mov	w0, 5
	add	x1, sp, 196608
	str	w0, [x1, 3436]
	b	.L8
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3436]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 196608
	ldr	w2, [x0, 3436]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w3, [x1]
	adrp	x1, Hprime
	add	x1, x1, :lo12:Hprime
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	add	x0, sp, 196608
	ldr	w0, [x0, 3436]
	add	w0, w0, 4
	add	x1, sp, 196608
	str	w0, [x1, 3436]
	add	x0, sp, 196608
	ldr	w1, [x0, 3436]
	mov	w0, 3407
	movk	w0, 0x3, lsl 16
	cmp	w1, w0
	ble	.L10
	nop
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 3440
	add	sp, sp, 196608
	ret
_Z7hsprimev:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	mov	x12, 53424
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, 53394
	movk	x1, 0x3, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 245760
	str	wzr, [x0, 4268]
	b	.L13
	adrp	x0, Hprime
	add	x0, x0, :lo12:Hprime
	add	x1, sp, 245760
	ldrsw	x1, [x1, 4268]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, 16961
	movk	w1, 0xf, lsl 16
	sdiv	w0, w1, w0
	add	x1, sp, 245760
	str	w0, [x1, 4260]
	add	x0, sp, 245760
	ldr	w0, [x0, 4268]
	add	x1, sp, 245760
	str	w0, [x1, 4264]
	b	.L14
	adrp	x0, Hprime
	add	x0, x0, :lo12:Hprime
	add	x1, sp, 245760
	ldrsw	x1, [x1, 4268]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Hprime
	add	x0, x0, :lo12:Hprime
	add	x2, sp, 245760
	ldrsw	x2, [x2, 4264]
	ldr	w0, [x0, x2, lsl 2]
	mul	w0, w1, w0
	sub	w0, w0, #1
	asr	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	mov	w2, 1
	strb	w2, [x1, x0]
	add	x0, sp, 245760
	ldr	w0, [x0, 4264]
	add	w0, w0, 1
	add	x1, sp, 245760
	str	w0, [x1, 4264]
	adrp	x0, Hprime
	add	x0, x0, :lo12:Hprime
	add	x1, sp, 245760
	ldrsw	x1, [x1, 4264]
	ldr	w0, [x0, x1, lsl 2]
	add	x1, sp, 245760
	ldr	w1, [x1, 4260]
	cmp	w1, w0
	bge	.L15
	add	x0, sp, 245760
	ldr	w0, [x0, 4268]
	add	w0, w0, 1
	add	x1, sp, 245760
	str	w0, [x1, 4268]
	add	x0, sp, 245760
	ldr	w0, [x0, 4268]
	cmp	w0, 151
	ble	.L16
	mov	w0, 6
	add	x1, sp, 245760
	str	w0, [x1, 4268]
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	b	.L17
	add	x0, sp, 245760
	ldrsw	x0, [x0, 4268]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L18
	add	x0, sp, 245760
	ldr	w0, [x0, 4268]
	lsl	w0, w0, 2
	add	w2, w0, 1
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w3, [x1]
	adrp	x1, Hprime
	add	x1, x1, :lo12:Hprime
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	add	x0, sp, 245760
	ldr	w0, [x0, 4268]
	add	w0, w0, 1
	add	x1, sp, 245760
	str	w0, [x1, 4268]
	add	x0, sp, 245760
	ldr	w1, [x0, 4268]
	mov	w0, 53393
	movk	w0, 0x3, lsl 16
	cmp	w1, w0
	ble	.L19
	nop
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 176
	add	sp, sp, 249856
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	_Z6hprimev
	bl	_Z7hsprimev
	b	.L21
	str	wzr, [sp, 28]
	b	.L22
	adrp	x0, Hprime
	add	x0, x0, :lo12:Hprime
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L28
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L25
	b	.L24
	nop
	ldr	w0, [sp, 24]
	ldr	w2, [sp, 28]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret