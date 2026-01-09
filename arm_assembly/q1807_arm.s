main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	add	x0, x29, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [x29, 172]
	b	.L2
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 132]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 152]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 59
	lsl	x21, x25, 5
	orr	x21, x1, x21
	lsl	x20, x24, 5
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 59
	lsl	x23, x27, 5
	orr	x23, x1, x23
	lsl	x22, x26, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
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
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 144]
	add	x0, x29, 96
	add	x0, x29, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [x29, 168]
	str	wzr, [x29, 164]
	b	.L6
	ldrsw	x1, [x29, 164]
	add	x0, x29, 96
	ldrb	w0, [x0]
	strb	w0, [x29, 143]
	str	wzr, [x29, 160]
	b	.L7
	ldrsw	x1, [x29, 160]
	add	x0, x29, 96
	ldrb	w0, [x0]
	ldrb	w1, [x29, 143]
	cmp	w1, w0
	bne	.L8
	ldr	w1, [x29, 164]
	ldr	w0, [x29, 160]
	add	w0, w1, w0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L8
	mov	w0, 1
	b	.L9
	mov	w0, 0
	cmp	w0, 0
	beq	.L10
	mov	w0, 1
	str	w0, [x29, 168]
	ldr	w0, [x29, 160]
	add	w0, w0, 1
	str	w0, [x29, 160]
	ldrsw	x19, [x29, 160]
	add	x0, x29, 96
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	ldr	w0, [x29, 164]
	add	w0, w0, 1
	str	w0, [x29, 164]
	ldrsw	x19, [x29, 164]
	add	x0, x29, 96
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	ldr	w0, [x29, 168]
	cmp	w0, 1
	bne	.L13
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, x29, 96
	mov	sp, x28
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
	ldr	w0, [x29, 136]
	ldr	w1, [x29, 172]
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L19
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L19
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