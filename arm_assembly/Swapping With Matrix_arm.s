	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	str	wzr, [sp, 60]
	b	.L2
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, #2000
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x2, x1, x0
	ldrsw	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, #2000
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	str	wzr, [sp, 60]
	b	.L5
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x1, x0, x1
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, x1, x0
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x1, x0, x1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L6
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L8
	str	wzr, [sp, 40]
	b	.L9
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L10
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L11
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	sub	x12, sp, #983040
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 17008
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 999424
	add	x0, x0, 608
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 999424
	add	x0, x0, 604
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 999424
	add	x0, x0, 600
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 999424
	str	wzr, [x0, 620]
	b	.L13
	add	x0, sp, 999424
	str	wzr, [x0, 616]
	b	.L14
	add	x2, sp, 24
	add	x0, sp, 999424
	ldrsw	x3, [x0, 616]
	add	x0, sp, 999424
	ldrsw	x1, [x0, 620]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 999424
	ldr	w0, [x0, 616]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	add	x1, sp, 999424
	ldr	w1, [x1, 616]
	cmp	w1, w0
	blt	.L15
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 620]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	add	x1, sp, 999424
	ldr	w1, [x1, 620]
	cmp	w1, w0
	blt	.L16
	add	x0, sp, 999424
	ldr	w1, [x0, 604]
	add	x0, sp, 999424
	ldr	w2, [x0, 600]
	add	x0, sp, 999424
	ldr	w3, [x0, 608]
	add	x0, sp, 24
	bl	_Z8swapRowsPA500_iiii
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	add	x1, sp, 999424
	str	w0, [x1, 612]
	add	x0, sp, 999424
	ldr	w0, [x0, 600]
	add	x1, sp, 999424
	str	w0, [x1, 604]
	add	x0, sp, 999424
	ldr	w0, [x0, 612]
	add	x1, sp, 999424
	str	w0, [x1, 600]
	add	x0, sp, 999424
	ldr	w1, [x0, 604]
	add	x0, sp, 999424
	ldr	w2, [x0, 600]
	add	x0, sp, 999424
	ldr	w3, [x0, 608]
	add	x0, sp, 24
	bl	_Z11swapColumnsPA500_iiii
	add	x0, sp, 999424
	ldr	w1, [x0, 608]
	add	x0, sp, 24
	bl	_Z11printMatrixPA500_ii
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 624
	add	sp, sp, 999424
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	str	w1, [x0]
	add	x0, sp, 44
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L23
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L23
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