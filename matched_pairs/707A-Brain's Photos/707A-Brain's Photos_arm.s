main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x28, x0
	str	wzr, [x29, 236]
	add	x0, x29, 196
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 192
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [x29, 192]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 216]
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
	ldr	w2, [x29, 196]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 208]
	sxtw	x0, w1
	mov	x26, x0
	mov	x27, 0
	sxtw	x0, w2
	mov	x24, x0
	mov	x25, 0
	mul	x3, x26, x24
	umulh	x0, x26, x24
	madd	x0, x27, x24, x0
	madd	x0, x26, x25, x0
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
	mov	x22, x0
	mov	x23, 0
	sxtw	x0, w2
	mov	x20, x0
	mov	x21, 0
	mul	x3, x22, x20
	umulh	x0, x22, x20
	madd	x0, x23, x20, x0
	madd	x0, x22, x21, x0
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
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 200]
	str	wzr, [x29, 232]
	b	.L5
	str	wzr, [x29, 228]
	b	.L6
	ldrsw	x1, [x29, 228]
	ldrsw	x0, [x29, 232]
	mul	x0, x0, x19
	add	x0, x1, x0
	ldr	x1, [x29, 200]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x2, [x29, 200]
	ldrsw	x1, [x29, 228]
	ldrsw	x0, [x29, 232]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 77
	beq	.L7
	ldr	x2, [x29, 200]
	ldrsw	x1, [x29, 228]
	ldrsw	x0, [x29, 232]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 67
	beq	.L7
	ldr	x2, [x29, 200]
	ldrsw	x1, [x29, 228]
	ldrsw	x0, [x29, 232]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 89
	bne	.L8
	mov	w0, 1
	str	w0, [x29, 236]
	ldr	w0, [x29, 228]
	add	w0, w0, 1
	str	w0, [x29, 228]
	ldr	w0, [x29, 192]
	ldr	w1, [x29, 228]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [x29, 232]
	add	w0, w0, 1
	str	w0, [x29, 232]
	ldr	w0, [x29, 196]
	ldr	w1, [x29, 232]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [x29, 236]
	cmp	w0, 0
	bne	.L11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x28
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 240
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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