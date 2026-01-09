	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	ldr	w4, [sp, 28]
	ldr	x3, [sp, 32]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:strtol
	ldr	x0, [x0, #:got_lo12:strtol]
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	b	.L4
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L5
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L5
	mov	w0, 1
	b	.L6
	mov	w0, 0
	cmp	w0, 0
	beq	.L7
	add	x0, sp, 40
	mov	w2, 10
	mov	x1, 0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	and	w0, w0, 3
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 72]
	mov	w1, 9363
	movk	w1, 0x9249, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 2
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 3
	sub	w1, w1, w2
	sub	w2, w0, w1
	cmp	w2, 0
	beq	.L7
	ldr	w0, [sp, 72]
	mov	w1, 16733
	movk	w1, 0xae4c, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 47
	mul	w1, w1, w2
	sub	w1, w0, w1
	cmp	w1, 0
	beq	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w20, 0
	mov	w19, 0
	b	.L8
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	w19, 1
	add	x0, sp, 40
	cmp	w19, 1
	bne	.L11
	mov	w20, 0
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	bl	__errno_location
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
	bl	__errno_location
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [x1]
	nop
	ldp	x29, x30, [sp], 32
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp]
	ldr	x1, [sp, 8]
	mov	x0, -2147483648
	cmp	x1, x0
	blt	.L17
	ldr	x1, [sp, 8]
	mov	x0, 2147483647
	cmp	x1, x0
	ble	.L18
	mov	w0, 1
	b	.L19
	mov	w0, 0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	w4, [sp, 44]
	add	x0, sp, 80
	ldr	x3, [sp, 72]
	add	x0, sp, 88
	ldr	w2, [sp, 44]
	mov	x1, x0
	ldr	x0, [sp, 56]
	blr	x3
	str	x0, [sp, 104]
	ldr	x0, [sp, 88]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bne	.L22
	ldr	x0, [sp, 64]
	bl	__errno_location
	ldr	w0, [x0]
	cmp	w0, 34
	beq	.L23
	mov	w1, w19
	ldr	x0, [sp, 104]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	beq	.L26
	ldr	x0, [sp, 64]
	ldr	x0, [sp, 104]
	str	w0, [sp, 100]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L27
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 48]
	str	x1, [x0]
	ldr	w19, [sp, 100]
	add	x0, sp, 80
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L31
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L31
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