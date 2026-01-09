_ZSt3absl:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	add	sp, sp, 16
	ret
	nop
	ret
_ZL3INF:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L10
	ldr	x0, [sp, 40]
	b	.L11
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L12
	add	x0, sp, 24
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 40]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 140
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L15
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 136
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 136]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 160]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 59
	lsl	x21, x25, 5
	orr	x21, x1, x21
	lsl	x20, x24, 5
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 59
	lsl	x23, x27, 5
	orr	x23, x1, x23
	lsl	x22, x26, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L17
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L16
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L18
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 152]
	str	wzr, [x29, 172]
	b	.L19
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
	ldr	w0, [x29, 136]
	ldr	w1, [x29, 172]
	cmp	w1, w0
	blt	.L20
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 152]
	mov	x1, x0
	ldr	x0, [x29, 152]
	add	w0, w0, 1
	str	w0, [x29, 132]
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 152]
	mov	x1, x0
	ldr	x0, [x29, 152]
	add	w0, w0, 1
	str	w0, [x29, 128]
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x19, x1, x0
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 152]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt3absl
	str	w0, [x29, 124]
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x19, x1, x0
	ldr	w0, [x29, 136]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 152]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt3absl
	str	w0, [x29, 120]
	ldr	w0, [x29, 132]
	str	w0, [x29, 104]
	ldr	w0, [x29, 128]
	str	w0, [x29, 108]
	ldr	w0, [x29, 124]
	str	w0, [x29, 112]
	ldr	w0, [x29, 120]
	str	w0, [x29, 116]
	str	wzr, [x29, 168]
	add	x0, x29, 104
	add	x0, x0, 16
	add	x2, x29, 104
	mov	x1, x0
	mov	x0, x2
	ldr	w0, [x0]
	ldr	w1, [x29, 168]
	add	w0, w1, w0
	str	w0, [x29, 168]
	add	x0, x29, 104
	add	x0, x0, 16
	add	x2, x29, 104
	mov	x1, x0
	mov	x0, x2
	ldr	w1, [x0]
	ldr	w0, [x29, 132]
	cmp	w1, w0
	beq	.L21
	add	x0, x29, 104
	add	x0, x0, 16
	add	x2, x29, 104
	mov	x1, x0
	mov	x0, x2
	ldr	w1, [x0]
	ldr	w0, [x29, 124]
	cmp	w1, w0
	bne	.L22
	mov	w0, 1
	b	.L23
	mov	w0, 0
	cmp	w0, 0
	beq	.L24
	ldr	w1, [x29, 128]
	ldr	w0, [x29, 132]
	sub	w0, w1, w0
	bl	abs
	str	w0, [x29, 144]
	add	x1, x29, 120
	add	x0, x29, 144
	bl	_ZSt3minIiERKT_S2_S2_
	mov	x19, x0
	add	x1, x29, 120
	add	x0, x29, 128
	bl	_ZSt3minIiERKT_S2_S2_
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [x29, 168]
	add	w0, w1, w0
	str	w0, [x29, 168]
	b	.L25
	ldr	w1, [x29, 132]
	ldr	w0, [x29, 128]
	sub	w0, w1, w0
	bl	abs
	str	w0, [x29, 148]
	add	x1, x29, 124
	add	x0, x29, 148
	bl	_ZSt3minIiERKT_S2_S2_
	mov	x19, x0
	add	x1, x29, 124
	add	x0, x29, 132
	bl	_ZSt3minIiERKT_S2_S2_
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	ldr	w1, [x29, 168]
	add	w0, w1, w0
	str	w0, [x29, 168]
	ldr	w1, [x29, 168]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	sp, x28
	ldr	w0, [x29, 140]
	sub	w1, w0, #1
	str	w1, [x29, 140]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L33
	ldr	x0, [sp]
	b	.L34
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L36
	ldr	x0, [sp, 40]
	b	.L37
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L38
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L39
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	ret
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L46
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L46
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