	.arch armv8-a
	.file	"0740-delete-and-earn.c"
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
	.global	deleteAndEarn
	.type	deleteAndEarn, %function
deleteAndEarn:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	.cfi_offset 27, -160
	str	x0, [x29, 168]
	str	w1, [x29, 164]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 164]
	cmp	w0, 0
	bne	.L4
	mov	w0, 0
	b	.L5
.L4:
	ldr	x0, [x29, 168]
	ldr	w0, [x0]
	str	w0, [x29, 236]
	str	wzr, [x29, 232]
	b	.L6
.L7:
	ldrsw	x0, [x29, 232]
	lsl	x0, x0, 2
	ldr	x1, [x29, 168]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [x29, 236]
	bl	max
	str	w0, [x29, 236]
	ldr	w0, [x29, 232]
	add	w0, w0, 1
	str	w0, [x29, 232]
.L6:
	ldr	w1, [x29, 232]
	ldr	w0, [x29, 164]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [x29, 236]
	add	w0, w0, 1
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
.L8:
	cmp	sp, x1
	beq	.L9
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L8
.L9:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L10
	str	xzr, [sp, 1024]
.L10:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 200]
	str	wzr, [x29, 228]
	b	.L11
.L12:
	ldr	x0, [x29, 200]
	ldrsw	x1, [x29, 228]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 228]
	add	w0, w0, 1
	str	w0, [x29, 228]
.L11:
	ldr	w1, [x29, 228]
	ldr	w0, [x29, 236]
	cmp	w1, w0
	ble	.L12
	str	wzr, [x29, 224]
	b	.L13
.L14:
	ldrsw	x0, [x29, 224]
	lsl	x0, x0, 2
	ldr	x1, [x29, 168]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [x29, 200]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldrsw	x0, [x29, 224]
	lsl	x0, x0, 2
	ldr	x2, [x29, 168]
	add	x0, x2, x0
	ldr	w0, [x0]
	ldrsw	x2, [x29, 224]
	lsl	x2, x2, 2
	ldr	x3, [x29, 168]
	add	x2, x3, x2
	ldr	w3, [x2]
	add	w2, w1, w0
	ldr	x0, [x29, 200]
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 224]
	add	w0, w0, 1
	str	w0, [x29, 224]
.L13:
	ldr	w1, [x29, 224]
	ldr	w0, [x29, 164]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [x29, 236]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 192]
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
.L15:
	cmp	sp, x1
	beq	.L16
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L15
.L16:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L17
	str	xzr, [sp, 1024]
.L17:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	str	wzr, [x0]
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 184]
	str	w1, [x0, 4]
	mov	w0, 2
	str	w0, [x29, 220]
	b	.L18
.L19:
	ldr	w0, [x29, 220]
	sub	w1, w0, #1
	ldr	x0, [x29, 184]
	sxtw	x1, w1
	ldr	w3, [x0, x1, lsl 2]
	ldr	w0, [x29, 220]
	sub	w1, w0, #2
	ldr	x0, [x29, 184]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, 200]
	ldrsw	x2, [x29, 220]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	mov	w1, w0
	mov	w0, w3
	bl	max
	mov	w2, w0
	ldr	x0, [x29, 184]
	ldrsw	x1, [x29, 220]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 220]
	add	w0, w0, 1
	str	w0, [x29, 220]
.L18:
	ldr	w1, [x29, 220]
	ldr	w0, [x29, 236]
	cmp	w1, w0
	ble	.L19
	ldr	x0, [x29, 184]
	ldrsw	x1, [x29, 236]
	ldr	w0, [x0, x1, lsl 2]
.L5:
	mov	sp, x19
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
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
	.size	deleteAndEarn, .-deleteAndEarn
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
