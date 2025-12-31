	.arch armv8-a
	.file	"1035-uncrossed-lines.c"
	.text
	.align	2
	.global	maxUncrossedLines
	.type	maxUncrossedLines, %function
maxUncrossedLines:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	sub	sp, sp, #16
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	str	x0, [x29, 88]
	str	w1, [x29, 84]
	str	x2, [x29, 72]
	str	w3, [x29, 80]
	mov	x0, sp
	mov	x24, x0
	ldr	w0, [x29, 80]
	add	w1, w0, 1
	ldr	w0, [x29, 84]
	add	w2, w0, 1
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 112]
	sxtw	x0, w1
	mov	x18, x0
	mov	x19, 0
	lsr	x0, x18, 59
	lsl	x17, x19, 5
	orr	x17, x0, x17
	lsl	x16, x18, 5
	sxtw	x0, w1
	lsl	x19, x0, 2
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 104]
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
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L2:
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
.L3:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
.L4:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 96]
	str	wzr, [x29, 124]
	b	.L5
.L12:
	str	wzr, [x29, 120]
	b	.L6
.L11:
	ldr	w0, [x29, 124]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [x29, 120]
	cmp	w0, 0
	bne	.L8
.L7:
	lsr	x1, x19, 2
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 120]
	ldrsw	x3, [x29, 124]
	mul	x1, x3, x1
	add	x1, x2, x1
	str	wzr, [x0, x1, lsl 2]
	b	.L9
.L8:
	ldrsw	x0, [x29, 124]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [x29, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [x29, 120]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [x29, 72]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L10
	lsr	x1, x19, 2
	ldr	w0, [x29, 124]
	sub	w3, w0, #1
	ldr	w0, [x29, 120]
	sub	w2, w0, #1
	ldr	x0, [x29, 96]
	sxtw	x2, w2
	sxtw	x3, w3
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	lsr	x1, x19, 2
	add	w2, w0, 1
	ldr	x0, [x29, 96]
	ldrsw	x3, [x29, 120]
	ldrsw	x4, [x29, 124]
	mul	x1, x4, x1
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	b	.L9
.L10:
	lsr	x1, x19, 2
	ldr	w0, [x29, 124]
	sub	w3, w0, #1
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 120]
	sxtw	x3, w3
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	lsr	x1, x19, 2
	ldr	w0, [x29, 120]
	sub	w2, w0, #1
	ldr	x0, [x29, 96]
	sxtw	x2, w2
	ldrsw	x3, [x29, 124]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d1, w0
	bl	fmax
	lsr	x1, x19, 2
	fcvtzs	w2, d0
	ldr	x0, [x29, 96]
	ldrsw	x3, [x29, 120]
	ldrsw	x4, [x29, 124]
	mul	x1, x4, x1
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	str	w0, [x29, 120]
.L6:
	ldr	w1, [x29, 120]
	ldr	w0, [x29, 80]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [x29, 124]
	add	w0, w0, 1
	str	w0, [x29, 124]
.L5:
	ldr	w1, [x29, 124]
	ldr	w0, [x29, 84]
	cmp	w1, w0
	ble	.L12
	lsr	x1, x19, 2
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 80]
	ldrsw	x3, [x29, 84]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x24
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	maxUncrossedLines, .-maxUncrossedLines
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
