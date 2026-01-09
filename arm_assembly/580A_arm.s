	mov	w0, 2147483647
	ret
_ZL3INF:
main:
	stp	x29, x30, [sp, -144]!
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
	add	x0, x29, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 108]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 120]
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 59
	lsl	x23, x27, 5
	orr	x23, x1, x23
	lsl	x22, x26, 5
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 59
	lsl	x21, x25, 5
	orr	x21, x1, x21
	lsl	x20, x24, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L5
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L4
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L6
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 112]
	str	wzr, [x29, 140]
	b	.L7
	ldrsw	x0, [x29, 140]
	lsl	x0, x0, 2
	ldr	x1, [x29, 112]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 140]
	add	w0, w0, 1
	str	w0, [x29, 140]
	ldr	w0, [x29, 108]
	ldr	w1, [x29, 140]
	cmp	w1, w0
	blt	.L8
	ldr	w19, [x29, 108]
	mov	w2, w0
	ldr	x0, [x29, 112]
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
	str	wzr, [x29, 136]
	str	wzr, [x29, 132]
	str	wzr, [x29, 128]
	b	.L9
	ldr	w0, [x29, 132]
	add	w0, w0, 1
	str	w0, [x29, 132]
	ldr	w1, [x29, 132]
	ldr	w0, [x29, 136]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [x29, 132]
	b	.L11
	ldr	w0, [x29, 136]
	str	w0, [x29, 136]
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 128]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 128]
	add	w2, w0, 1
	ldr	x0, [x29, 112]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L12
	str	wzr, [x29, 132]
	ldr	w0, [x29, 128]
	add	w0, w0, 1
	str	w0, [x29, 128]
	ldr	w0, [x29, 108]
	ldr	w1, [x29, 128]
	cmp	w1, w0
	blt	.L13
	ldr	w1, [x29, 136]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	sp, x28
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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