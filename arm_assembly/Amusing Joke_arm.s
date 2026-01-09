main:
	mov	x12, 8208
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 4096
	add	x0, x0, 4056
	add	x0, sp, 4096
	add	x0, x0, 4024
	add	x0, sp, 4096
	add	x0, x0, 3992
	add	x0, sp, 4096
	add	x0, x0, 4056
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 4096
	add	x0, x0, 4024
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 4096
	add	x0, x0, 3992
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 4064
	mov	x1, 4020
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 40
	mov	x1, 4020
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	add	x1, sp, 8192
	strb	w0, [x1, 15]
	add	x0, sp, 4096
	add	x0, x0, 4056
	mov	x19, x0
	add	x0, sp, 4096
	add	x0, x0, 4024
	add	x19, x19, x0
	add	x0, sp, 4096
	add	x0, x0, 3992
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	str	wzr, [sp, 8200]
	b	.L3
	ldrsw	x1, [sp, 8200]
	add	x0, sp, 4096
	add	x0, x0, 4056
	ldrb	w0, [x0]
	sub	w0, w0, #65
	str	w0, [sp, 8184]
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 4064
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 4064
	str	w2, [x1, x0]
	ldr	w0, [sp, 8200]
	add	w0, w0, 1
	str	w0, [sp, 8200]
	ldrsw	x19, [sp, 8200]
	add	x0, sp, 4096
	add	x0, x0, 4056
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 8196]
	b	.L5
	ldrsw	x1, [sp, 8196]
	add	x0, sp, 4096
	add	x0, x0, 4024
	ldrb	w0, [x0]
	sub	w0, w0, #65
	str	w0, [sp, 8184]
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 4064
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 4064
	str	w2, [x1, x0]
	ldr	w0, [sp, 8196]
	add	w0, w0, 1
	str	w0, [sp, 8196]
	ldrsw	x19, [sp, 8196]
	add	x0, sp, 4096
	add	x0, x0, 4024
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 8192]
	b	.L7
	ldrsw	x1, [sp, 8192]
	add	x0, sp, 4096
	add	x0, x0, 3992
	ldrb	w0, [x0]
	sub	w0, w0, #65
	str	w0, [sp, 8184]
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 8184]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	ldr	w0, [sp, 8192]
	add	w0, w0, 1
	str	w0, [sp, 8192]
	ldrsw	x19, [sp, 8192]
	add	x0, sp, 4096
	add	x0, x0, 3992
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	str	wzr, [sp, 8188]
	b	.L9
	ldrsw	x0, [sp, 8188]
	lsl	x0, x0, 2
	add	x1, sp, 4064
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8188]
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L10
	add	x0, sp, 8192
	strb	wzr, [x0, 15]
	b	.L11
	ldr	w0, [sp, 8188]
	add	w0, w0, 1
	str	w0, [sp, 8188]
	ldrsw	x19, [sp, 8188]
	add	x0, sp, 4096
	add	x0, x0, 3992
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	add	x0, sp, 8192
	ldrb	w0, [x0, 15]
	cmp	w0, 0
	beq	.L13
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 4096
	add	x0, x0, 3992
	add	x0, sp, 4096
	add	x0, x0, 4024
	add	x0, sp, 4096
	add	x0, x0, 4056
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	mov	x12, 8208
	add	sp, sp, x12
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