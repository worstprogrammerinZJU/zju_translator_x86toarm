main:
	sub	x12, sp, #393216
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 6848
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 393216
	str	wzr, [x0, 6844]
	b	.L2
	add	x1, sp, 24
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6844]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 393216
	ldr	w0, [x0, 6844]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6844]
	ldr	w0, [sp, 20]
	add	x1, sp, 393216
	ldr	w1, [x1, 6844]
	cmp	w1, w0
	blt	.L3
	mov	w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6840]
	add	x0, sp, 393216
	str	wzr, [x0, 6836]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	add	x1, sp, 393216
	str	w0, [x1, 6832]
	b	.L4
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6836]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6832]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L5
	add	x0, sp, 393216
	str	wzr, [x0, 6840]
	b	.L6
	add	x0, sp, 393216
	ldr	w0, [x0, 6836]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6836]
	add	x0, sp, 393216
	ldr	w0, [x0, 6832]
	sub	w0, w0, #1
	add	x1, sp, 393216
	str	w0, [x1, 6832]
	add	x0, sp, 393216
	ldr	w1, [x0, 6836]
	add	x0, sp, 393216
	ldr	w0, [x0, 6832]
	cmp	w1, w0
	blt	.L7
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	cmp	w0, 1
	bne	.L8
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L9
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 2752
	add	sp, sp, 397312
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