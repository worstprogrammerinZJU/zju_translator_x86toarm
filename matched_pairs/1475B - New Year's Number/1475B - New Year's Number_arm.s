main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x2, [sp, 16]
	mov	x0, 57231
	movk	x0, 0x123f, lsl 16
	movk	x0, 0x35bc, lsl 32
	movk	x0, 0x81c6, lsl 48
	smulh	x0, x2, x0
	add	x0, x0, x2
	asr	x1, x0, 10
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 6
	sub	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x1, x2, x0
	cmp	x1, 0
	bne	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	x1, [sp, 16]
	mov	x0, 53019
	movk	x0, 0x9f59, lsl 16
	movk	x0, 0x715e, lsl 32
	movk	x0, 0x206d, lsl 48
	smulh	x0, x1, x0
	asr	x2, x0, 8
	asr	x0, x1, 63
	sub	x0, x2, x0
	mov	x2, 2021
	mul	x0, x0, x2
	sub	x0, x1, x0
	cmp	x0, 0
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	x0, [sp, 16]
	sub	x0, x0, #2020
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	mov	x0, 53019
	movk	x0, 0x9f59, lsl 16
	movk	x0, 0x715e, lsl 32
	movk	x0, 0x206d, lsl 48
	smulh	x0, x1, x0
	asr	x2, x0, 8
	asr	x0, x1, 63
	sub	x0, x2, x0
	mov	x2, 2021
	mul	x0, x0, x2
	sub	x0, x1, x0
	cmp	x0, 0
	bne	.L6
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bge	.L5
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bgt	.L7
	ldr	x0, [sp, 24]
	sub	x1, x0, #1
	str	x1, [sp, 24]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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