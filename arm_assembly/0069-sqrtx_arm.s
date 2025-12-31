	.arch armv8-a
	.file	"0069-sqrtx.c"
	.text
	.align	2
	.global	mySqrt
	.type	mySqrt, %function
mySqrt:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	b	.L2
.L6:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	mul	x1, x0, x0
	ldrsw	x0, [sp, 12]
	cmp	x1, x0
	bne	.L3
	ldr	x0, [sp, 16]
	b	.L4
.L3:
	ldr	x0, [sp, 16]
	mul	x1, x0, x0
	ldrsw	x0, [sp, 12]
	cmp	x1, x0
	ble	.L5
	ldr	x0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L2
.L5:
	ldr	x0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 24]
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	mySqrt, .-mySqrt
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
