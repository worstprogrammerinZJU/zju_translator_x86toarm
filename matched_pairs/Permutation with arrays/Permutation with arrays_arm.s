main:
	mov	x12, 8096
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4096
	add	x0, x0, 3956
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 8092]
	b	.L2
	add	x1, sp, 4040
	ldrsw	x0, [sp, 8092]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 8092]
	add	w0, w0, 1
	str	w0, [sp, 8092]
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8092]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 8088]
	b	.L4
	add	x1, sp, 24
	ldrsw	x0, [sp, 8088]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 8088]
	add	w0, w0, 1
	str	w0, [sp, 8088]
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8088]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 8084]
	b	.L6
	str	wzr, [sp, 8080]
	b	.L7
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 4040
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L8
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w0, [x1, x0]
	str	w0, [sp, 8056]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	str	w2, [x1, x0]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w2, [sp, 8056]
	str	w2, [x1, x0]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	str	w0, [sp, 8080]
	ldr	w1, [sp, 8052]
	ldr	w0, [sp, 8084]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 8080]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 8084]
	add	w0, w0, 1
	str	w0, [sp, 8084]
	ldr	w0, [sp, 8052]
	sub	w0, w0, #1
	ldr	w1, [sp, 8084]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 8076]
	b	.L11
	str	wzr, [sp, 8072]
	b	.L12
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L13
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 8060]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 8060]
	str	w2, [x1, x0]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	str	w0, [sp, 8072]
	ldr	w1, [sp, 8052]
	ldr	w0, [sp, 8076]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 8072]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 8076]
	add	w0, w0, 1
	str	w0, [sp, 8076]
	ldr	w0, [sp, 8052]
	sub	w0, w0, #1
	ldr	w1, [sp, 8076]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
	add	x1, sp, 4096
	strb	w0, [x1, 3975]
	str	wzr, [sp, 8064]
	b	.L16
	ldrsw	x0, [sp, 8064]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8064]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L17
	add	x0, sp, 4096
	strb	wzr, [x0, 3975]
	b	.L18
	ldr	w0, [sp, 8064]
	add	w0, w0, 1
	str	w0, [sp, 8064]
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8064]
	cmp	w1, w0
	blt	.L19
	add	x0, sp, 4096
	ldrb	w0, [x0, 3975]
	cmp	w0, 0
	beq	.L20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L21
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 8096
	add	sp, sp, x12
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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