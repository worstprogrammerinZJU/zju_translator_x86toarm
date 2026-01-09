main:
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 168
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 168]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 208]
	sxtw	x1, w0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x27, x4, 5
	orr	x27, x1, x27
	mov	x1, x2
	lsl	x26, x1, 5
	sxtw	x1, w0
	str	x1, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x25, x4, 5
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 200]
	str	wzr, [x29, 236]
	str	wzr, [x29, 232]
	b	.L5
	ldrsw	x0, [x29, 232]
	lsl	x0, x0, 2
	ldr	x1, [x29, 200]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	x0, [x29, 200]
	ldrsw	x1, [x29, 232]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 236]
	add	w0, w1, w0
	str	w0, [x29, 236]
	ldr	w0, [x29, 232]
	add	w0, w0, 1
	str	w0, [x29, 232]
	ldr	w0, [x29, 168]
	ldr	w1, [x29, 232]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	str	w0, [x29, 196]
	ldr	w0, [x29, 196]
	str	w0, [x29, 228]
	str	wzr, [x29, 224]
	str	wzr, [x29, 220]
	ldr	w0, [x29, 168]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 184]
	sxtw	x1, w0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x23, x4, 5
	orr	x23, x1, x23
	mov	x1, x2
	lsl	x22, x1, 5
	sxtw	x1, w0
	str	x1, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x2, x3, [x29, 96]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x21, x4, 5
	orr	x21, x1, x21
	mov	x1, x2
	lsl	x20, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L8
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L7
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L9
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 176]
	str	wzr, [x29, 172]
	b	.L10
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	str	w0, [x29, 220]
	ldr	x0, [x29, 200]
	ldrsw	x1, [x29, 220]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 196]
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	cmp	w1, w0
	bgt	.L10
	ldr	x0, [x29, 200]
	ldrsw	x1, [x29, 220]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 228]
	add	w0, w1, w0
	str	w0, [x29, 228]
	ldr	x0, [x29, 176]
	ldrsw	x1, [x29, 224]
	ldr	w2, [x29, 220]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 224]
	add	w0, w0, 1
	str	w0, [x29, 224]
	ldr	w0, [x29, 168]
	sub	w0, w0, #1
	ldr	w1, [x29, 220]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [x29, 236]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [x29, 228]
	cmp	w0, w1
	bgt	.L12
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	mov	sp, x19
	b	.L13
	ldr	w0, [x29, 224]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	str	wzr, [x29, 216]
	b	.L14
	ldr	x0, [x29, 176]
	ldrsw	x1, [x29, 216]
	ldr	w0, [x0, x1, lsl 2]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [x29, 216]
	add	w0, w0, 1
	str	w0, [x29, 216]
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 224]
	cmp	w1, w0
	blt	.L15
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 240
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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