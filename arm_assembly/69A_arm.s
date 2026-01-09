_ZL3INF:
main:
	stp	x29, x30, [sp, -208]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 172
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [x29, 172]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 184]
	sxtw	x0, w2
	str	x0, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x4, x5, [x29, 144]
	mov	x0, x4
	mov	x1, x5
	lsr	x3, x0, 63
	lsl	x27, x1, 1
	orr	x27, x3, x27
	lsl	x26, x0, 1
	mov	x0, x26
	mov	x1, x27
	mov	x3, x4
	adds	x3, x0, x3
	mov	x4, x5
	adc	x0, x1, x4
	str	x3, [x29, 112]
	str	x0, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x25, x1, 5
	orr	x25, x0, x25
	mov	x0, x4
	lsl	x24, x0, 5
	sxtw	x0, w2
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x4, x5, [x29, 128]
	mov	x0, x4
	mov	x1, x5
	lsr	x3, x0, 63
	lsl	x23, x1, 1
	orr	x23, x3, x23
	lsl	x22, x0, 1
	mov	x0, x22
	mov	x1, x23
	mov	x3, x4
	adds	x3, x0, x3
	mov	x4, x5
	adc	x0, x1, x4
	str	x3, [x29, 96]
	str	x0, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x21, x1, 5
	orr	x21, x0, x21
	mov	x0, x4
	lsl	x20, x0, 5
	sxtw	x1, w2
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
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
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 176]
	str	wzr, [x29, 204]
	b	.L5
	ldrsw	x1, [x29, 204]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	ldr	x1, [x29, 176]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	ldrsw	x1, [x29, 204]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 4
	ldr	x1, [x29, 176]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	ldrsw	x1, [x29, 204]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, 8
	ldr	x1, [x29, 176]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [x29, 204]
	add	w0, w0, 1
	str	w0, [x29, 204]
	ldr	w0, [x29, 172]
	ldr	w1, [x29, 204]
	cmp	w1, w0
	blt	.L6
	str	wzr, [x29, 200]
	str	wzr, [x29, 196]
	b	.L7
	str	wzr, [x29, 200]
	str	wzr, [x29, 192]
	b	.L8
	ldr	x2, [x29, 176]
	ldrsw	x3, [x29, 196]
	ldrsw	x1, [x29, 192]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [x29, 200]
	add	w0, w1, w0
	str	w0, [x29, 200]
	ldr	w0, [x29, 192]
	add	w0, w0, 1
	str	w0, [x29, 192]
	ldr	w0, [x29, 172]
	ldr	w1, [x29, 192]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [x29, 200]
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w0, 0
	b	.L11
	ldr	w0, [x29, 196]
	add	w0, w0, 1
	str	w0, [x29, 196]
	ldr	w0, [x29, 196]
	cmp	w0, 2
	ble	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w0, 0
	mov	sp, x19
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 208
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