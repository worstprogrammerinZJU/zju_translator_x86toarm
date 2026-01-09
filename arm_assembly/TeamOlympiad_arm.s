main:
	stp	x29, x30, [sp, -384]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 292
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w1, [x29, 292]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 352]
	sxtw	x0, w1
	str	x0, [x29, 208]
	str	xzr, [x29, 216]
	ldp	x2, x3, [x29, 208]
	mov	x0, x2
	lsr	x0, x0, 59
	mov	x4, x3
	lsl	x21, x4, 5
	orr	x21, x0, x21
	mov	x0, x2
	lsl	x20, x0, 5
	sxtw	x0, w1
	str	x0, [x29, 192]
	str	xzr, [x29, 200]
	ldp	x2, x3, [x29, 192]
	mov	x0, x2
	lsr	x0, x0, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 280]
	ldr	x4, [x29, 280]
	orr	x0, x0, x4
	str	x0, [x29, 280]
	mov	x0, x2
	lsl	x0, x0, 5
	str	x0, [x29, 272]
	sxtw	x0, w1
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
	str	x0, [x29, 344]
	str	wzr, [x29, 380]
	str	wzr, [x29, 376]
	str	wzr, [x29, 372]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 336]
	sxtw	x1, w0
	str	x1, [x29, 176]
	str	xzr, [x29, 184]
	ldp	x2, x3, [x29, 176]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 264]
	ldr	x4, [x29, 264]
	orr	x1, x1, x4
	str	x1, [x29, 264]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 256]
	sxtw	x1, w0
	str	x1, [x29, 160]
	str	xzr, [x29, 168]
	ldp	x2, x3, [x29, 160]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 248]
	ldr	x4, [x29, 248]
	orr	x1, x1, x4
	str	x1, [x29, 248]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 240]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L6
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L5
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L7
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 328]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 320]
	sxtw	x1, w0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 232]
	ldr	x4, [x29, 232]
	orr	x1, x1, x4
	str	x1, [x29, 232]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 224]
	sxtw	x1, w0
	str	x1, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x27, x4, 5
	orr	x27, x1, x27
	mov	x1, x2
	lsl	x26, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L9
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L8
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L10
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 312]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 304]
	sxtw	x1, w0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x25, x4, 5
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 5
	sxtw	x1, w0
	str	x1, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x2, x3, [x29, 96]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x23, x4, 5
	orr	x23, x1, x23
	mov	x1, x2
	lsl	x22, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L12
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L11
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L13
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 296]
	str	wzr, [x29, 364]
	b	.L14
	ldrsw	x0, [x29, 364]
	lsl	x0, x0, 2
	ldr	x1, [x29, 344]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	x0, [x29, 344]
	ldrsw	x1, [x29, 364]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L15
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 328]
	ldrsw	x1, [x29, 380]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 380]
	add	w0, w0, 1
	str	w0, [x29, 380]
	b	.L16
	ldr	x0, [x29, 344]
	ldrsw	x1, [x29, 364]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L17
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 312]
	ldrsw	x1, [x29, 376]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 376]
	add	w0, w0, 1
	str	w0, [x29, 376]
	b	.L16
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 296]
	ldrsw	x1, [x29, 372]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 372]
	add	w0, w0, 1
	str	w0, [x29, 372]
	mov	w0, 10000
	str	w0, [x29, 368]
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 380]
	cmp	w1, w0
	ble	.L18
	ldr	w0, [x29, 380]
	str	w0, [x29, 368]
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 376]
	cmp	w1, w0
	ble	.L19
	ldr	w0, [x29, 376]
	str	w0, [x29, 368]
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 372]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [x29, 372]
	str	w0, [x29, 368]
	ldr	w0, [x29, 364]
	add	w0, w0, 1
	str	w0, [x29, 364]
	ldr	w0, [x29, 292]
	ldr	w1, [x29, 364]
	cmp	w1, w0
	blt	.L21
	ldr	w1, [x29, 368]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	str	wzr, [x29, 360]
	b	.L22
	ldr	x0, [x29, 328]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [x29, 312]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [x29, 296]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [x29, 360]
	add	w0, w0, 1
	str	w0, [x29, 360]
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 368]
	cmp	w1, w0
	blt	.L23
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 384
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L27
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L27
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