_ZL3INF:
main:
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 208
	add	x0, sp, 208
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 48
	mov	x19, 4
	mov	x20, x0
	b	.L2
	mov	x0, x20
	add	x20, x20, 32
	sub	x19, x19, #1
	cmp	x19, 0
	bge	.L3
	str	wzr, [sp, 252]
	b	.L4
	add	x1, sp, 48
	ldrsw	x0, [sp, 252]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	w0, [sp, 252]
	add	w0, w0, 1
	str	w0, [sp, 252]
	ldr	w0, [sp, 252]
	cmp	w0, 4
	ble	.L5
	str	wzr, [sp, 248]
	b	.L6
	add	x0, sp, 208
	mov	x1, 0
	ldrb	w19, [x0]
	add	x1, sp, 48
	ldrsw	x0, [sp, 248]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w21, 0
	mov	w20, 0
	b	.L8
	ldr	w0, [sp, 248]
	add	w0, w0, 1
	str	w0, [sp, 248]
	ldr	w0, [sp, 248]
	cmp	w0, 4
	ble	.L9
	str	wzr, [sp, 244]
	b	.L10
	add	x0, sp, 208
	mov	x1, 1
	ldrb	w19, [x0]
	add	x1, sp, 48
	ldrsw	x0, [sp, 244]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x1, 1
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w21, 0
	mov	w20, 0
	b	.L8
	ldr	w0, [sp, 244]
	add	w0, w0, 1
	str	w0, [sp, 244]
	ldr	w0, [sp, 244]
	cmp	w0, 4
	ble	.L12
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w1, 10
	mov	w20, 1
	add	x19, sp, 48
	add	x19, x19, 160
	add	x0, sp, 48
	cmp	x19, x0
	beq	.L13
	sub	x19, x19, #32
	mov	x0, x19
	b	.L14
	cmp	w20, 1
	beq	.L15
	mov	w19, 0
	b	.L16
	mov	w19, 1
	add	x0, sp, 208
	cmp	w19, 1
	bne	.L18
	mov	w21, 0
	mov	w0, w21
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 256
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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