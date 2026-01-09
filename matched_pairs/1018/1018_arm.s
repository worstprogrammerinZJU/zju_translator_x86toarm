B:
P:
D:
device:
bandwidthOrder:
pointer:
_Z8priceCmpPKvS0_:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 32]
	ldr	x0, [sp]
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 16]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L7
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L7
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L5
	mov	w0, -1
	b	.L7
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	add	sp, sp, 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	adrp	x0, device
	add	x1, x0, :lo12:device
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, device
	add	x2, x0, :lo12:device
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L9
	mov	w0, -1
	b	.L10
	adrp	x0, device
	add	x1, x0, :lo12:device
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, device
	add	x2, x0, :lo12:device
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L11
	mov	w0, 1
	b	.L10
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L13
	adrp	x0, B
	add	x0, x0, :lo12:B
	str	wzr, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	str	wzr, [x0]
	str	wzr, [sp, 44]
	adrp	x0, D
	add	x1, x0, :lo12:D
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L14
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	ldrsw	x1, [sp, 56]
	ldr	w2, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	str	wzr, [sp, 48]
	b	.L15
	ldrsw	x0, [sp, 52]
	lsl	x1, x0, 4
	adrp	x0, device
	add	x0, x0, :lo12:device
	add	x3, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x1, x0, 4
	adrp	x0, device
	add	x0, x0, :lo12:device
	add	x0, x1, x0
	add	x0, x0, 4
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, device
	add	x1, x0, :lo12:device
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0, 8]
	adrp	x0, device
	add	x1, x0, :lo12:device
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 4
	add	x0, x1, x0
	strb	wzr, [x0, 12]
	adrp	x0, bandwidthOrder
	add	x0, x0, :lo12:bandwidthOrder
	ldrsw	x1, [sp, 52]
	ldr	w2, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L16
	ldrsw	x1, [sp, 52]
	ldr	w0, [sp, 36]
	sxtw	x0, w0
	sub	x0, x1, x0
	lsl	x1, x0, 4
	adrp	x0, device
	add	x0, x0, :lo12:device
	add	x4, x1, x0
	ldr	w0, [sp, 36]
	sxtw	x1, w0
	adrp	x0, _Z8priceCmpPKvS0_
	mov	x2, 16
	mov	x0, x4
	bl	qsort
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	ldrsw	x1, [sp, 56]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, D
	add	x0, x0, :lo12:D
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L17
	ldrsw	x1, [sp, 52]
	mov	x2, 4
	adrp	x0, bandwidthOrder
	add	x0, x0, :lo12:bandwidthOrder
	bl	qsort
	str	wzr, [sp, 56]
	b	.L18
	adrp	x0, bandwidthOrder
	add	x0, x0, :lo12:bandwidthOrder
	ldrsw	x1, [sp, 56]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 16]
	adrp	x0, bandwidthOrder
	add	x0, x0, :lo12:bandwidthOrder
	ldrsw	x1, [sp, 56]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0, 12]
	ldr	w1, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L19
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	w2, [sp, 16]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	mul	w0, w2, w0
	cmp	w1, w0
	bge	.L21
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	str	w1, [x0]
	ldr	w1, [sp, 16]
	adrp	x0, B
	add	x0, x0, :lo12:B
	str	w1, [x0]
	b	.L21
	ldr	w3, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldrb	w0, [x0, 12]
	cmp	w0, 1
	bne	.L22
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x2, w2
	ldr	w3, [x0, x2, lsl 2]
	adrp	x0, device
	add	x2, x0, :lo12:device
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	cmp	w1, w0
	beq	.L23
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x2, w2
	ldr	w3, [x0, x2, lsl 2]
	adrp	x0, device
	add	x2, x0, :lo12:device
	sxtw	x0, w3
	lsl	x0, x0, 4
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	cmp	w1, w0
	bne	.L29
	ldr	w1, [sp, 24]
	adrp	x0, pointer
	add	x0, x0, :lo12:pointer
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, device
	add	x1, x0, :lo12:device
	sxtw	x0, w2
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, D
	add	x0, x0, :lo12:D
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	sub	w0, w1, w0
	ldr	w1, [sp, 56]
	cmp	w1, w0
	ble	.L26
	b	.L25
	nop
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	scvtf	d1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L27
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret