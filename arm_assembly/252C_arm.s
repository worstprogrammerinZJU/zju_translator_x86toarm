_ZL3INF:
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	x3, [sp, 8]
	b	.L2
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bge	.L3
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 16]
	b	.L2
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 44]
	b	.L5
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bge	.L6
	ldr	w0, [sp, 44]
	b	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 20]
	add	sp, sp, 48
	ret
main:
	stp	x29, x30, [sp, -176]!
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
	add	x0, x29, 112
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, x29, 104
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [x29, 112]
	sub	x1, x0, #1
	str	x1, [x29, 144]
	mov	x1, x0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	mov	x1, x0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L10
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L9
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L11
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 136]
	str	wzr, [x29, 172]
	b	.L12
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 3
	ldr	x1, [x29, 136]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
	ldrsw	x1, [x29, 172]
	ldr	x0, [x29, 112]
	cmp	x1, x0
	blt	.L13
	str	xzr, [x29, 160]
	str	wzr, [x29, 156]
	b	.L14
	ldr	x0, [x29, 112]
	sub	w0, w0, #1
	mov	w2, w0
	ldr	x0, [x29, 136]
	ldrsw	x1, [x29, 156]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 104]
	add	x0, x1, x0
	mov	x3, x0
	ldr	w1, [x29, 156]
	ldr	x0, [x29, 136]
	bl	_Z13binary_searchPxiix
	sxtw	x0, w0
	str	x0, [x29, 128]
	ldrsw	x0, [x29, 156]
	ldr	x1, [x29, 128]
	sub	x0, x1, x0
	cmp	x0, 1
	ble	.L15
	ldrsw	x0, [x29, 156]
	ldr	x1, [x29, 128]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	sub	x1, x0, #2
	ldr	x0, [x29, 120]
	sub	x0, x0, #1
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [x29, 160]
	add	x0, x0, x1
	str	x0, [x29, 160]
	ldr	w0, [x29, 156]
	add	w0, w0, 1
	str	w0, [x29, 156]
	ldrsw	x1, [x29, 156]
	ldr	x0, [x29, 112]
	cmp	x1, x0
	blt	.L16
	ldr	x1, [x29, 160]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 176
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