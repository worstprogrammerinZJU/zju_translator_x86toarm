_Z3gcdii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 28]
	b	.L3
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
	ldp	x29, x30, [sp], 32
	ret
_Z7isPrimei:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L5
	mov	w0, 0
	b	.L6
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L7
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 60]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	b	.L6
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	scvtf	d8, w0
	ldr	w0, [sp, 44]
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 1
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
_Z3lcmii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3gcdii
	mov	w1, w0
	ldr	w0, [sp, 28]
	sdiv	w1, w0, w1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L13
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L14
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L14
	mov	w0, 1
	b	.L15
	mov	w0, 0
	cmp	w0, 0
	beq	.L16
	mov	w0, 0
	b	.L17
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	mov	w0, 1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 76]
	b	.L20
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L21
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 52
	bne	.L21
	ldr	w0, [sp, 76]
	add	w0, w0, 2
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 52
	bne	.L21
	ldr	w0, [sp, 76]
	add	w0, w0, 2
	sxtw	x19, w0
	add	x0, sp, 40
	cmp	x19, x0
	bcs	.L21
	mov	w0, 1
	b	.L22
	mov	w0, 0
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 76]
	add	w0, w0, 3
	str	w0, [sp, 76]
	b	.L20
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L24
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 52
	bne	.L24
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	sxtw	x19, w0
	add	x0, sp, 40
	cmp	x19, x0
	bcs	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	beq	.L26
	ldr	w0, [sp, 76]
	add	w0, w0, 2
	str	w0, [sp, 76]
	b	.L20
	ldrsw	x1, [sp, 76]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w0, 49
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L27
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w20, 0
	mov	w19, 0
	b	.L28
	ldrsw	x19, [sp, 76]
	add	x0, sp, 40
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L29
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w19, 1
	add	x0, sp, 40
	cmp	w19, 1
	bne	.L31
	mov	w20, 0
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L36
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L36
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