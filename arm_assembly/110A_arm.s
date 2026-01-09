main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	str	wzr, [sp, 28]
	b	.L2
	ldr	x1, [sp, 16]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x1, x0
	asr	x2, x0, 2
	asr	x0, x1, 63
	sub	x2, x2, x0
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 1
	sub	x2, x1, x0
	mov	w0, w2
	str	w0, [sp, 24]
	ldr	x0, [sp, 16]
	mov	x1, 7378697629483820646
	movk	x1, 0x6667, lsl 0
	smulh	x1, x0, x1
	asr	x1, x1, 2
	asr	x0, x0, 63
	sub	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w0, [sp, 24]
	cmp	w0, 7
	beq	.L3
	ldr	w0, [sp, 24]
	cmp	w0, 4
	bne	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 4
	beq	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 7
	beq	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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