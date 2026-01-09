_ZL3INF:
main:
	stp	x29, x30, [sp, -304]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, x29, 228
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 224
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 224]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 272]
	sxtw	x1, w0
	str	x1, [x29, 176]
	str	xzr, [x29, 184]
	ldp	x2, x3, [x29, 176]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x21, x4, 5
	orr	x21, x1, x21
	mov	x1, x2
	lsl	x20, x1, 5
	sxtw	x1, w0
	str	x1, [x29, 160]
	str	xzr, [x29, 168]
	ldp	x2, x3, [x29, 160]
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
	beq	.L4
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L3
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L5
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 264]
	str	wzr, [x29, 300]
	b	.L6
	ldrsw	x0, [x29, 300]
	lsl	x0, x0, 2
	ldr	x1, [x29, 264]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [x29, 300]
	add	w0, w0, 1
	str	w0, [x29, 300]
	ldr	w0, [x29, 224]
	ldr	w1, [x29, 300]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [x29, 224]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 256]
	sxtw	x1, w0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x25, x4, 5
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 5
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
	str	x0, [x29, 248]
	ldr	w0, [x29, 224]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 240]
	sxtw	x1, w0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 216]
	ldr	x4, [x29, 216]
	orr	x1, x1, x4
	str	x1, [x29, 216]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 208]
	sxtw	x1, w0
	str	x1, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x2, x3, [x29, 96]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 200]
	ldr	x4, [x29, 200]
	orr	x1, x1, x4
	str	x1, [x29, 200]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 192]
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
	str	x0, [x29, 232]
	str	wzr, [x29, 296]
	str	wzr, [x29, 292]
	b	.L14
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 292]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L15
	ldr	w0, [x29, 296]
	add	w0, w0, 1
	str	w0, [x29, 296]
	ldr	x0, [x29, 248]
	ldrsw	x1, [x29, 292]
	ldr	w2, [x29, 296]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 292]
	add	w0, w0, 1
	str	w0, [x29, 292]
	ldr	w0, [x29, 224]
	ldr	w1, [x29, 292]
	cmp	w1, w0
	blt	.L16
	str	wzr, [x29, 296]
	ldr	w0, [x29, 224]
	sub	w0, w0, #1
	str	w0, [x29, 288]
	b	.L17
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 288]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L18
	ldr	w0, [x29, 296]
	add	w0, w0, 1
	str	w0, [x29, 296]
	ldr	x0, [x29, 232]
	ldrsw	x1, [x29, 288]
	ldr	w2, [x29, 296]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 288]
	sub	w0, w0, #1
	str	w0, [x29, 288]
	ldr	w0, [x29, 288]
	cmp	w0, 0
	bge	.L19
	mov	w0, -1
	str	w0, [x29, 284]
	str	wzr, [x29, 280]
	b	.L20
	ldr	x0, [x29, 248]
	ldrsw	x1, [x29, 280]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 280]
	add	w2, w0, 1
	ldr	x0, [x29, 232]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L21
	ldr	w0, [x29, 280]
	add	w0, w0, 1
	str	w0, [x29, 284]
	b	.L22
	ldr	w0, [x29, 280]
	add	w0, w0, 1
	str	w0, [x29, 280]
	ldr	w0, [x29, 224]
	sub	w0, w0, #1
	ldr	w1, [x29, 280]
	cmp	w1, w0
	blt	.L23
	ldr	w1, [x29, 284]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	sp, x19
	ldr	w0, [x29, 228]
	sub	w1, w0, #1
	str	w1, [x29, 228]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 304
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L28
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L28
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