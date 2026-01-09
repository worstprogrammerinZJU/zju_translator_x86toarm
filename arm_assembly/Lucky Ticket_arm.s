main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 16
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	mov	w0, 1
	strb	w0, [sp, 79]
	mov	w0, 1
	strb	w0, [sp, 78]
	str	wzr, [sp, 72]
	b	.L2
	ldrsw	x1, [sp, 72]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L3
	ldrsw	x1, [sp, 72]
	add	x0, sp, 16
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L3
	mov	w0, 1
	b	.L4
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	strb	wzr, [sp, 79]
	b	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L7
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L8
	str	wzr, [sp, 68]
	str	wzr, [sp, 64]
	str	wzr, [sp, 60]
	b	.L9
	ldrsw	x1, [sp, 60]
	add	x0, sp, 16
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 68]
	add	w0, w0, w1
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 60]
	cmp	w0, w1
	blt	.L10
	ldr	w0, [sp, 52]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 56]
	b	.L11
	ldrsw	x1, [sp, 56]
	add	x0, sp, 16
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 64]
	add	w0, w0, w1
	str	w0, [sp, 64]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L12
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	beq	.L8
	strb	wzr, [sp, 78]
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L13
	ldrb	w0, [sp, 78]
	cmp	w0, 0
	beq	.L13
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	b	.L14
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	add	x0, sp, 16
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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