	.arch armv8-a
	.file	"0853-car-fleet.c"
	.text
	.align	2
	.global	compareCars
	.type	compareCars, %function
compareCars:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	compareCars, .-compareCars
	.align	2
	.global	carFleet
	.type	carFleet, %function
carFleet:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	sub	sp, sp, #16
	.cfi_offset 19, -96
	str	w0, [x29, 60]
	str	x1, [x29, 48]
	str	w2, [x29, 56]
	str	x3, [x29, 40]
	str	w4, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 56]
	cmp	w0, 0
	bne	.L4
	mov	w0, 0
	b	.L5
.L4:
	ldr	w0, [x29, 56]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 80]
	sxtw	x1, w0
	mov	x12, x1
	mov	x13, 0
	lsr	x1, x12, 58
	lsl	x9, x13, 6
	orr	x9, x1, x9
	lsl	x8, x12, 6
	sxtw	x1, w0
	mov	x10, x1
	mov	x11, 0
	lsr	x1, x10, 58
	lsl	x7, x11, 6
	orr	x7, x1, x7
	lsl	x6, x10, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L6:
	cmp	sp, x1
	beq	.L7
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L6
.L7:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L8
	str	xzr, [sp, 1024]
.L8:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 72]
	str	wzr, [x29, 108]
	b	.L9
.L10:
	ldrsw	x0, [x29, 108]
	lsl	x0, x0, 2
	ldr	x1, [x29, 48]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x2, [x29, 72]
	ldrsw	x0, [x29, 108]
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0]
	ldrsw	x0, [x29, 108]
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x2, [x29, 72]
	ldrsw	x0, [x29, 108]
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0, 4]
	ldr	w0, [x29, 108]
	add	w0, w0, 1
	str	w0, [x29, 108]
.L9:
	ldr	w1, [x29, 108]
	ldr	w0, [x29, 56]
	cmp	w1, w0
	blt	.L10
	adrp	x0, compareCars
	add	x3, x0, :lo12:compareCars
	mov	x2, 8
	ldr	w1, [x29, 56]
	ldr	x0, [x29, 72]
	bl	qsort
	str	wzr, [x29, 104]
	fmov	d0, -1.0e+0
	str	d0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w0, w0, #1
	str	w0, [x29, 92]
	b	.L11
.L14:
	ldr	x1, [x29, 72]
	ldrsw	x0, [x29, 92]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [x29, 60]
	sub	w0, w1, w0
	scvtf	d1, w0
	ldr	x1, [x29, 72]
	ldrsw	x0, [x29, 92]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [x29, 64]
	ldr	d1, [x29, 64]
	ldr	d0, [x29, 96]
	fcmpe	d1, d0
	bgt	.L16
	b	.L12
.L16:
	ldr	w0, [x29, 104]
	add	w0, w0, 1
	str	w0, [x29, 104]
	ldr	d0, [x29, 64]
	str	d0, [x29, 96]
.L12:
	ldr	w0, [x29, 92]
	sub	w0, w0, #1
	str	w0, [x29, 92]
.L11:
	ldr	w0, [x29, 92]
	cmp	w0, 0
	bge	.L14
	ldr	w0, [x29, 104]
.L5:
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
	.size	carFleet, .-carFleet
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
