	.arch armv8-a
	.file	"0312-burst-balloons.c"
	.text
	.align	2
	.global	max
	.type	max, %function
max:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	max, .-max
	.align	2
	.global	maxCoins
	.type	maxCoins, %function
maxCoins:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	str	x0, [x29, 120]
	str	w1, [x29, 116]
	mov	x0, sp
	mov	x28, x0
	ldr	w0, [x29, 116]
	add	w0, w0, 2
	str	w0, [x29, 188]
	ldr	w1, [x29, 188]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 176]
	sxtw	x0, w1
	str	x0, [x29, 96]
	str	xzr, [x29, 104]
	ldr	x0, [x29, 96]
	lsr	x0, x0, 59
	ldr	x30, [x29, 104]
	lsl	x19, x30, 5
	orr	x19, x0, x19
	ldr	x0, [x29, 96]
	lsl	x18, x0, 5
	sxtw	x0, w1
	mov	x26, x0
	mov	x27, 0
	lsr	x0, x26, 59
	lsl	x3, x27, 5
	orr	x3, x0, x3
	lsl	x2, x26, 5
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L4:
	cmp	sp, x1
	beq	.L5
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L4
.L5:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L6
	str	xzr, [sp, 1024]
.L6:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 168]
	ldr	w0, [x29, 188]
	sub	w3, w0, #1
	ldr	x0, [x29, 168]
	sxtw	x1, w3
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 168]
	sxtw	x1, w3
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, 168]
	str	w1, [x0]
	mov	w0, 1
	str	w0, [x29, 204]
	b	.L7
.L8:
	ldrsw	x0, [x29, 204]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [x29, 120]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldr	x0, [x29, 168]
	ldrsw	x1, [x29, 204]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 204]
	add	w0, w0, 1
	str	w0, [x29, 204]
.L7:
	ldr	w0, [x29, 188]
	sub	w0, w0, #1
	ldr	w1, [x29, 204]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [x29, 188]
	ldr	w2, [x29, 188]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 160]
	sxtw	x0, w1
	mov	x24, x0
	mov	x25, 0
	lsr	x0, x24, 59
	lsl	x17, x25, 5
	orr	x17, x0, x17
	lsl	x16, x24, 5
	sxtw	x0, w1
	lsl	x19, x0, 2
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 152]
	sxtw	x0, w1
	mov	x10, x0
	mov	x11, 0
	sxtw	x0, w2
	mov	x8, x0
	mov	x9, 0
	mul	x3, x10, x8
	umulh	x0, x10, x8
	madd	x0, x11, x8, x0
	madd	x0, x10, x9, x0
	mov	x22, x3
	mov	x23, x0
	lsr	x0, x22, 59
	lsl	x15, x23, 5
	orr	x15, x0, x15
	lsl	x14, x22, 5
	sxtw	x0, w1
	mov	x6, x0
	mov	x7, 0
	sxtw	x0, w2
	mov	x4, x0
	mov	x5, 0
	mul	x3, x6, x4
	umulh	x0, x6, x4
	madd	x0, x7, x4, x0
	madd	x0, x6, x5, x0
	mov	x20, x3
	mov	x21, x0
	lsr	x0, x20, 59
	lsl	x13, x21, 5
	orr	x13, x0, x13
	lsl	x12, x20, 5
	sxtw	x3, w1
	sxtw	x0, w2
	mul	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x3, x0, -65536
	sub	x3, sp, x3
.L9:
	cmp	sp, x3
	beq	.L10
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L9
.L10:
	and	x3, x0, 65535
	sub	sp, sp, x3
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L11
	str	xzr, [sp, 1024]
.L11:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 144]
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	mov	x2, x0
	mov	w1, 0
	ldr	x0, [x29, 144]
	bl	memset
	mov	w0, 2
	str	w0, [x29, 200]
	b	.L12
.L17:
	str	wzr, [x29, 196]
	b	.L13
.L16:
	ldr	w1, [x29, 196]
	ldr	w0, [x29, 200]
	add	w0, w1, w0
	str	w0, [x29, 140]
	ldr	w0, [x29, 196]
	add	w0, w0, 1
	str	w0, [x29, 192]
	b	.L14
.L15:
	lsr	x1, x19, 2
	ldr	x0, [x29, 144]
	ldrsw	x2, [x29, 140]
	ldrsw	x3, [x29, 196]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w5, [x0, x1, lsl 2]
	ldr	x0, [x29, 168]
	ldrsw	x1, [x29, 196]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, 168]
	ldrsw	x2, [x29, 192]
	ldr	w0, [x0, x2, lsl 2]
	mul	w1, w1, w0
	ldr	x0, [x29, 168]
	ldrsw	x2, [x29, 140]
	ldr	w0, [x0, x2, lsl 2]
	mul	w1, w1, w0
	lsr	x2, x19, 2
	ldr	x0, [x29, 144]
	ldrsw	x3, [x29, 192]
	ldrsw	x4, [x29, 196]
	mul	x2, x4, x2
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	lsr	x2, x19, 2
	ldr	x0, [x29, 144]
	ldrsw	x3, [x29, 140]
	ldrsw	x4, [x29, 192]
	mul	x2, x4, x2
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	lsr	x20, x19, 2
	mov	w1, w0
	mov	w0, w5
	bl	max
	mov	w3, w0
	ldr	x0, [x29, 144]
	ldrsw	x2, [x29, 140]
	ldrsw	x1, [x29, 196]
	mul	x1, x1, x20
	add	x1, x2, x1
	str	w3, [x0, x1, lsl 2]
	ldr	w0, [x29, 192]
	add	w0, w0, 1
	str	w0, [x29, 192]
.L14:
	ldr	w1, [x29, 192]
	ldr	w0, [x29, 140]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [x29, 196]
	add	w0, w0, 1
	str	w0, [x29, 196]
.L13:
	ldr	w1, [x29, 188]
	ldr	w0, [x29, 200]
	sub	w0, w1, w0
	ldr	w1, [x29, 196]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [x29, 200]
	add	w0, w0, 1
	str	w0, [x29, 200]
.L12:
	ldr	w1, [x29, 200]
	ldr	w0, [x29, 188]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [x29, 188]
	sub	w1, w0, #1
	ldr	x0, [x29, 144]
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x28
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
	.size	maxCoins, .-maxCoins
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
