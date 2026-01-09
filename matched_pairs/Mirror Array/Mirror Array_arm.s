main:
	mov	x12, 44144
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L2
	add	x0, sp, 32768
	str	wzr, [x0, 11368]
	b	.L3
	add	x2, sp, 24
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11368]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11372]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x3, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11368]
	ldr	w0, [sp, 16]
	add	x1, sp, 32768
	ldr	w1, [x1, 11368]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
	ldr	w0, [sp, 20]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 32768
	str	wzr, [x0, 11364]
	b	.L6
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	add	x1, sp, 32768
	str	w0, [x1, 11360]
	b	.L7
	add	x0, sp, 32768
	ldrsw	x2, [x0, 11360]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11364]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	sub	w0, w0, #1
	add	x1, sp, 32768
	str	w0, [x1, 11360]
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	cmp	w0, 0
	bge	.L8
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11364]
	ldr	w0, [sp, 20]
	add	x1, sp, 32768
	ldr	w1, [x1, 11364]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 44144
	add	sp, sp, x12
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