main:
	stp	x29, x30, [sp, -496]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldrh	w1, [x1, 32]
	strh	w1, [x0, 32]
	str	wzr, [sp, 154]
	strh	wzr, [sp, 158]
	str	wzr, [sp, 492]
	b	.L2
	str	wzr, [sp, 488]
	b	.L3
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 124
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 4
	str	w0, [sp, 488]
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L4
	ldr	w0, [sp, 492]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	lsl	w0, w0, 2
	add	w0, w0, 1
	str	w0, [sp, 488]
	b	.L5
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 2
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 46
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 8
	str	w0, [sp, 488]
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L6
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	lsl	w0, w0, 2
	add	w0, w0, 1
	str	w0, [sp, 488]
	b	.L7
	ldrsw	x2, [sp, 488]
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 2
	sxtw	x2, w0
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 58
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 488]
	add	w0, w0, 8
	str	w0, [sp, 488]
	ldr	w0, [sp, 488]
	cmp	w0, 33
	ble	.L8
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, sp, 193
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
	ldr	w0, [sp, 492]
	cmp	w0, 7
	ble	.L9
	add	x0, sp, 16
	bl	gets
	mov	w0, 6
	str	w0, [sp, 492]
	b	.L10
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 81
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 82
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	beq	.L11
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L12
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w3, [x1, x0]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	b	.L13
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 44
	bne	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 104
	bhi	.L13
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 80
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L14
	add	x0, sp, 16
	bl	gets
	mov	w0, 6
	str	w0, [sp, 492]
	b	.L15
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 81
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 82
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 66
	beq	.L16
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L17
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 32
	and	w3, w0, 255
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, w3
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	b	.L18
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 44
	bne	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 104
	bhi	.L18
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	lsl	w0, w0, 2
	add	w0, w0, 2
	str	w0, [sp, 484]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	mov	w0, 56
	sub	w0, w0, w1
	str	w0, [sp, 488]
	ldrsw	x2, [sp, 484]
	ldrsw	x1, [sp, 488]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 496
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #4096
	mov	w1, 112
	strb	w1, [x0, 3760]
	ldr	w0, [sp, 492]
	add	w0, w0, 2
	str	w0, [sp, 492]
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
	ldrsw	x0, [sp, 492]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L19
	str	wzr, [sp, 492]
	b	.L20
	add	x2, sp, 160
	ldrsw	x1, [sp, 492]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	add	x0, sp, 120
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 492]
	add	w0, w0, 1
	str	w0, [sp, 492]
	ldr	w0, [sp, 492]
	cmp	w0, 7
	ble	.L21
	add	x0, sp, 120
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 496
	ret