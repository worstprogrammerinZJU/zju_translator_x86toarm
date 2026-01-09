main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	cmp	x0, 4
	ble	.L2
	ldr	x2, [sp, 16]
	mov	x0, 7378697629483820646
	movk	x0, 0x6667, lsl 0
	smulh	x0, x2, x0
	asr	x1, x0, 1
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	sub	x1, x2, x0
	cmp	x1, 0
	bne	.L3
	ldr	x0, [sp, 16]
	mov	x1, 7378697629483820646
	movk	x1, 0x6667, lsl 0
	smulh	x1, x0, x1
	asr	x1, x1, 1
	asr	x0, x0, 63
	sub	x0, x1, x0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L4
	ldr	x0, [sp, 16]
	mov	x1, 7378697629483820646
	movk	x1, 0x6667, lsl 0
	smulh	x1, x0, x1
	asr	x1, x1, 1
	asr	x0, x0, 63
	sub	x0, x1, x0
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L4
	ldr	x0, [sp, 16]
	cmp	x0, 4
	beq	.L5
	ldr	x0, [sp, 16]
	cmp	x0, 3
	beq	.L5
	ldr	x0, [sp, 16]
	cmp	x0, 2
	beq	.L5
	ldr	x0, [sp, 16]
	cmp	x0, 1
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L9
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L9
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