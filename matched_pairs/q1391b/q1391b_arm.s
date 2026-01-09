main:
	stp	x29, x30, [sp, -272]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	add	x0, x29, 212
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [x29, 268]
	b	.L2
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 208
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 204
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [x29, 204]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 232]
	sxtw	x0, w1
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 184]
	ldr	x4, [x29, 184]
	orr	x0, x0, x4
	str	x0, [x29, 184]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 176]
	sxtw	x19, w1
	ldr	w2, [x29, 208]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 224]
	sxtw	x0, w1
	mov	x20, x0
	mov	x21, 0
	sxtw	x0, w2
	mov	x22, x0
	mov	x23, 0
	mul	x3, x20, x22
	umulh	x0, x20, x22
	madd	x0, x21, x22, x0
	madd	x0, x20, x23, x0
	str	x3, [x29, 112]
	str	x0, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 168]
	ldr	x3, [x29, 168]
	orr	x0, x0, x3
	str	x0, [x29, 168]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 160]
	sxtw	x0, w1
	mov	x24, x0
	mov	x25, 0
	sxtw	x0, w2
	mov	x26, x0
	mov	x27, 0
	mul	x3, x24, x26
	umulh	x0, x24, x26
	madd	x0, x25, x26, x0
	madd	x0, x24, x27, x0
	str	x3, [x29, 96]
	str	x0, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 152]
	ldr	x3, [x29, 152]
	orr	x0, x0, x3
	str	x0, [x29, 152]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 144]
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L4
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L3
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L5
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 216]
	str	wzr, [x29, 264]
	b	.L6
	str	wzr, [x29, 260]
	b	.L7
	ldrsw	x1, [x29, 260]
	ldrsw	x0, [x29, 264]
	mul	x0, x0, x19
	add	x0, x1, x0
	ldr	x1, [x29, 216]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [x29, 260]
	add	w0, w0, 1
	str	w0, [x29, 260]
	ldr	w0, [x29, 204]
	ldr	w1, [x29, 260]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	str	w0, [x29, 264]
	ldr	w0, [x29, 208]
	ldr	w1, [x29, 264]
	cmp	w1, w0
	blt	.L9
	str	wzr, [x29, 256]
	str	wzr, [x29, 252]
	b	.L10
	ldr	w0, [x29, 204]
	sub	w0, w0, #1
	ldr	x2, [x29, 216]
	sxtw	x1, w0
	ldrsw	x0, [x29, 252]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L11
	ldr	w0, [x29, 256]
	add	w0, w0, 1
	str	w0, [x29, 256]
	ldr	w0, [x29, 252]
	add	w0, w0, 1
	str	w0, [x29, 252]
	ldr	w0, [x29, 208]
	ldr	w1, [x29, 252]
	cmp	w1, w0
	blt	.L12
	str	wzr, [x29, 248]
	str	wzr, [x29, 244]
	b	.L13
	ldr	w0, [x29, 208]
	sub	w0, w0, #1
	ldr	x2, [x29, 216]
	ldrsw	x1, [x29, 244]
	sxtw	x0, w0
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 68
	bne	.L14
	ldr	w0, [x29, 248]
	add	w0, w0, 1
	str	w0, [x29, 248]
	ldr	w0, [x29, 244]
	add	w0, w0, 1
	str	w0, [x29, 244]
	ldr	w0, [x29, 204]
	ldr	w1, [x29, 244]
	cmp	w1, w0
	blt	.L15
	ldr	w1, [x29, 256]
	ldr	w0, [x29, 248]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x28
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	str	w0, [x29, 268]
	ldr	w0, [x29, 212]
	ldr	w1, [x29, 268]
	cmp	w1, w0
	ble	.L16
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 272
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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