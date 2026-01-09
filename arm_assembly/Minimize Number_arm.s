main:
	sub	sp, sp, #864
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 840
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 860]
	b	.L2
	add	x1, sp, 16
	ldrsw	x0, [sp, 860]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 860]
	add	w0, w0, 1
	str	w0, [sp, 860]
	ldr	w0, [sp, 840]
	ldr	w1, [sp, 860]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 856]
	mov	w0, 1
	strb	w0, [sp, 855]
	str	wzr, [sp, 848]
	b	.L4
	ldrsw	x0, [sp, 848]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L5
	strb	wzr, [sp, 855]
	b	.L6
	ldr	w0, [sp, 848]
	add	w0, w0, 1
	str	w0, [sp, 848]
	ldr	w0, [sp, 840]
	ldr	w1, [sp, 848]
	cmp	w1, w0
	blt	.L7
	ldrb	w0, [sp, 855]
	cmp	w0, 0
	beq	.L15
	str	wzr, [sp, 844]
	b	.L9
	ldrsw	x0, [sp, 844]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 844]
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 844]
	add	w0, w0, 1
	str	w0, [sp, 844]
	ldr	w0, [sp, 840]
	ldr	w1, [sp, 844]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 856]
	add	w0, w0, 1
	str	w0, [sp, 856]
	b	.L13
	nop
	ldr	w1, [sp, 856]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 864
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