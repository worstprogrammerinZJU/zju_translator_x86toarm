main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	str	wzr, [sp, 92]
	b	.L3
	add	x1, sp, 16
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 7
	ble	.L4
	str	wzr, [sp, 88]
	b	.L5
	str	wzr, [sp, 84]
	b	.L6
	ldrsw	x0, [sp, 88]
	ldrsw	x1, [sp, 84]
	lsl	x1, x1, 3
	add	x1, x1, 96
	add	x1, sp, x1
	add	x0, x1, x0
	ldrb	w0, [x0, -80]
	cmp	w0, 46
	beq	.L7
	ldrsw	x0, [sp, 88]
	ldrsw	x1, [sp, 84]
	lsl	x1, x1, 3
	add	x1, x1, 96
	add	x1, sp, x1
	add	x0, x1, x0
	ldrb	w0, [x0, -80]
	bl	putchar
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 7
	ble	.L8
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 7
	ble	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 80]
	sub	w1, w0, #1
	str	w1, [sp, 80]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x0, 9223372036854775807
	str	x0, [sp, 40]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
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