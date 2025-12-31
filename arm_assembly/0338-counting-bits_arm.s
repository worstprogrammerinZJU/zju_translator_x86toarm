	.arch armv8-a
	.file	"0338-counting-bits.c"
	.text
	.align	2
	.global	countBits
	.type	countBits, %function
countBits:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	asr	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldr	w0, [sp, 44]
	and	w1, w0, 1
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x3, [sp, 32]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L3
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	countBits, .-countBits
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
