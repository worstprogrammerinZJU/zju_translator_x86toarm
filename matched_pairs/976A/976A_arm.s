main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x28, x0
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 172
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, x29, 136
	add	x0, x29, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x2, x29, 136
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	add	x0, x29, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	str	wzr, [x29, 108]
	mov	w19, 0
	b	.L3
	str	wzr, [x29, 220]
	add	x0, x29, 136
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	str	x0, [x29, 128]
	ldr	x0, [x29, 208]
	str	x0, [x29, 120]
	b	.L4
	add	x0, x29, 128
	ldrb	w0, [x0]
	strb	w0, [x29, 179]
	ldrb	w0, [x29, 179]
	sub	w0, w0, #48
	ldr	w1, [x29, 220]
	add	w0, w1, w0
	str	w0, [x29, 220]
	add	x0, x29, 128
	add	x1, x29, 120
	add	x0, x29, 128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L5
	ldr	w1, [x29, 172]
	ldr	w0, [x29, 220]
	sub	w0, w1, w0
	str	w0, [x29, 204]
	ldr	w0, [x29, 204]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 192]
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x23, x27, 3
	orr	x23, x1, x23
	lsl	x22, x26, 3
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x21, x25, 3
	orr	x21, x1, x21
	lsl	x20, x24, 3
	sxtw	x0, w0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L7
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L6
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L8
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	mov	w1, 49
	strb	w1, [x0]
	mov	w0, 1
	str	w0, [x29, 180]
	mov	w0, 1
	str	w0, [x29, 216]
	b	.L9
	ldr	x1, [x29, 184]
	ldrsw	x0, [x29, 216]
	mov	w2, 48
	strb	w2, [x1, x0]
	ldr	w0, [x29, 216]
	add	w0, w0, 1
	str	w0, [x29, 216]
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 204]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [x29, 204]
	add	w0, w0, 1
	ldr	x1, [x29, 184]
	sxtw	x0, w0
	strb	wzr, [x1, x0]
	ldr	x1, [x29, 184]
	adrp	x0, :got:_ZSt4cout
	mov	w19, 1
	add	x0, x29, 136
	cmp	w19, 1
	bne	.L11
	nop
	mov	sp, x28
	str	wzr, [x29, 108]
	b	.L12
	mov	sp, x28
	ldr	w0, [x29, 108]
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 224
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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