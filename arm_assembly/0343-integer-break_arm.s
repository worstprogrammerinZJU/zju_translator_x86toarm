	.arch armv8-a
	.file	"0343-integer-break.c"
	.text
	.align	2
	.global	integerBreak
	.type	integerBreak, %function
integerBreak:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	sub	sp, sp, #16
	.cfi_offset 19, -64
	str	w0, [x29, 44]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 44]
	cmp	w0, 2
	bgt	.L2
	mov	w0, 1
	b	.L3
.L2:
	ldr	w0, [x29, 44]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 64]
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 59
	lsl	x5, x9, 5
	orr	x5, x1, x5
	lsl	x4, x8, 5
	sxtw	x1, w0
	mov	x6, x1
	mov	x7, 0
	lsr	x1, x6, 59
	lsl	x3, x7, 5
	orr	x3, x1, x3
	lsl	x2, x6, 5
	sxtw	x0, w0
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
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	str	wzr, [x0]
	ldr	x0, [x29, 56]
	str	wzr, [x0, 4]
	ldr	x0, [x29, 56]
	mov	w1, 1
	str	w1, [x0, 8]
	mov	w0, 3
	str	w0, [x29, 76]
	b	.L7
.L10:
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	wzr, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [x29, 72]
	b	.L8
.L9:
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 72]
	sub	w1, w1, w0
	ldr	w0, [x29, 72]
	mul	w0, w1, w0
	scvtf	d1, w0
	bl	fmax
	fcvtzs	w2, d0
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 72]
	sub	w1, w1, w0
	ldr	x0, [x29, 56]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 72]
	mul	w0, w1, w0
	scvtf	d1, w0
	bl	fmax
	fcvtzs	w2, d0
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 72]
	add	w0, w0, 1
	str	w0, [x29, 72]
.L8:
	ldr	w0, [x29, 76]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [x29, 72]
	cmp	w0, w1
	ble	.L9
	ldr	w0, [x29, 76]
	add	w0, w0, 1
	str	w0, [x29, 76]
.L7:
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	ble	.L10
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 44]
	ldr	w0, [x0, x1, lsl 2]
.L3:
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	integerBreak, .-integerBreak
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
