comparePlayers:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L2
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sub	w0, w1, w0
	b	.L3
	ldr	x0, [sp, 24]
	ldr	w1, [x0, 4]
	ldr	x0, [sp, 16]
	ldr	w0, [x0, 4]
	sub	w0, w1, w0
	add	sp, sp, 32
	ret
bestTeamScore:
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	str	x0, [x29, 120]
	str	w1, [x29, 116]
	str	x2, [x29, 104]
	str	w3, [x29, 112]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 116]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 152]
	sxtw	x1, w0
	mov	x10, x1
	mov	x11, 0
	lsr	x1, x10, 58
	lsl	x7, x11, 6
	orr	x7, x1, x7
	lsl	x6, x10, 6
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 58
	lsl	x5, x9, 6
	orr	x5, x1, x5
	lsl	x4, x8, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
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
	str	x0, [x29, 144]
	str	wzr, [x29, 172]
	b	.L8
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 2
	ldr	x1, [x29, 104]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x2, [x29, 144]
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0]
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 2
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x2, [x29, 144]
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0, 4]
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
	ldr	w1, [x29, 172]
	ldr	w0, [x29, 116]
	cmp	w1, w0
	blt	.L9
	adrp	x0, comparePlayers
	add	x3, x0, :lo12:comparePlayers
	mov	x2, 8
	ldr	w1, [x29, 116]
	ldr	x0, [x29, 144]
	bl	qsort
	ldr	w0, [x29, 116]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 136]
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 59
	lsl	x23, x27, 5
	orr	x23, x1, x23
	lsl	x22, x26, 5
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 59
	lsl	x21, x25, 5
	orr	x21, x1, x21
	lsl	x20, x24, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L11
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L10
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L12
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 128]
	str	wzr, [x29, 168]
	str	wzr, [x29, 164]
	b	.L13
	ldr	x1, [x29, 144]
	ldrsw	x0, [x29, 164]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w2, [x0, 4]
	ldr	x0, [x29, 128]
	ldrsw	x1, [x29, 164]
	str	w2, [x0, x1, lsl 2]
	str	wzr, [x29, 160]
	b	.L14
	ldr	x1, [x29, 144]
	ldrsw	x0, [x29, 160]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldr	x2, [x29, 144]
	ldrsw	x0, [x29, 164]
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	cmp	w1, w0
	bgt	.L15
	ldr	x0, [x29, 128]
	ldrsw	x1, [x29, 160]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x2, [x29, 144]
	ldrsw	x0, [x29, 164]
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	ldr	x0, [x29, 128]
	ldrsw	x2, [x29, 164]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	ldr	x0, [x29, 128]
	ldrsw	x1, [x29, 164]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 160]
	add	w0, w0, 1
	str	w0, [x29, 160]
	ldr	w1, [x29, 160]
	ldr	w0, [x29, 164]
	cmp	w1, w0
	blt	.L16
	ldr	x0, [x29, 128]
	ldrsw	x1, [x29, 164]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w2, [x29, 168]
	ldr	w1, [x29, 168]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [x29, 168]
	ldr	w0, [x29, 164]
	add	w0, w0, 1
	str	w0, [x29, 164]
	ldr	w1, [x29, 164]
	ldr	w0, [x29, 116]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [x29, 168]
	mov	sp, x19
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret