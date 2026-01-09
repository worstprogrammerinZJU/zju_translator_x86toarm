main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	str	wzr, [sp, 108]
	b	.L2
	ldrsw	x1, [sp, 108]
	add	x0, sp, 64
	ldrb	w0, [x0]
	bl	tolower
	str	w0, [sp, 104]
	ldrsw	x1, [sp, 108]
	add	x0, sp, 32
	ldrb	w0, [x0]
	bl	tolower
	str	w0, [sp, 100]
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 100]
	cmp	w1, w0
	ble	.L3
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w20, 0
	mov	w19, 0
	b	.L4
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 100]
	cmp	w1, w0
	bge	.L5
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w20, 0
	mov	w19, 0
	b	.L4
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldrsw	x19, [sp, 108]
	add	x0, sp, 64
	cmp	x19, x0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w19, 1
	add	x0, sp, 32
	cmp	w19, 1
	bne	.L7
	mov	w19, 1
	b	.L8
	mov	w19, 0
	add	x0, sp, 64
	cmp	w19, 1
	bne	.L10
	mov	w20, 0
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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