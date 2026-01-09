main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w2, [sp, 28]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L3
	ldr	w0, [sp, 28]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 28]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 28]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	sub	w0, w0, #1
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	ldr	w2, [sp, 28]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 1
	bne	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 40]
	add	w0, w0, 2
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	ldr	w2, [sp, 28]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 2
	bne	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #2
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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