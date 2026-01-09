main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERy
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERy
	ldr	x0, [sp, 24]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L2
	ldr	x0, [sp, 24]
	lsr	x0, x0, 1
	add	x1, x0, 1
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L3
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	sub	x0, x0, #1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEy
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L4
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 1
	sub	x0, x1, x0
	sub	x0, x0, #1
	lsl	x0, x0, 1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEy
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	b	.L8
	ldr	x0, [sp, 24]
	lsr	x1, x0, 1
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L6
	ldr	x0, [sp, 16]
	lsl	x0, x0, 1
	sub	x0, x0, #1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEy
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L7
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	lsr	x0, x0, 1
	sub	x0, x1, x0
	lsl	x0, x0, 1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEy
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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