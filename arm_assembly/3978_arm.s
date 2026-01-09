main:
	mov	x12, 50032
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 8192
	add	x0, x0, 1832
	mov	x1, 40000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 24
	mov	x1, 10000
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	strb	w0, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 25]
	mov	w0, 2
	add	x1, sp, 49152
	str	w0, [x1, 876]
	b	.L2
	add	x0, sp, 49152
	ldr	w0, [x0, 876]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 1832
	ldr	w2, [x1, x0]
	add	x0, sp, 49152
	ldrsw	x0, [x0, 876]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 1832
	str	w2, [x1, x0]
	add	x0, sp, 49152
	ldrsw	x0, [x0, 876]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L12
	add	x0, sp, 49152
	ldr	w0, [x0, 876]
	lsl	w0, w0, 1
	add	x1, sp, 49152
	str	w0, [x1, 872]
	b	.L5
	add	x0, sp, 49152
	ldrsw	x0, [x0, 872]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	add	x0, sp, 49152
	ldr	w1, [x0, 872]
	add	x0, sp, 49152
	ldr	w0, [x0, 876]
	add	w0, w1, w0
	add	x1, sp, 49152
	str	w0, [x1, 872]
	add	x0, sp, 49152
	ldr	w1, [x0, 872]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L6
	add	x0, sp, 49152
	ldrsw	x0, [x0, 876]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 1832
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	add	x0, sp, 49152
	ldrsw	x0, [x0, 876]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 1832
	str	w2, [x1, x0]
	b	.L4
	nop
	add	x0, sp, 49152
	ldr	w0, [x0, 876]
	add	w0, w0, 1
	add	x1, sp, 49152
	str	w0, [x1, 876]
	add	x0, sp, 49152
	ldr	w1, [x0, 876]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L7
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	b	.L8
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L9
	mov	w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 16]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 1832
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 8192
	add	x2, x2, 1832
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 20]
	cmn	w0, #1
	bne	.L10
	ldr	w0, [sp, 16]
	cmn	w0, #1
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 50032
	add	sp, sp, x12
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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