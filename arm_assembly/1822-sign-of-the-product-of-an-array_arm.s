	.arch armv8-a
	.file	"1822-sign-of-the-product-of-an-array.c"
	.text
	.align	2
	.global	arraySign
	.type	arraySign, %function
arraySign:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 1
	strb	w0, [sp, 31]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	neg	w0, w0
	lsr	w0, w0, 31
	ldrsw	x1, [sp, 24]
	lsl	x1, x1, 2
	ldr	x2, [sp, 8]
	add	x1, x2, x1
	ldr	w1, [x1]
	asr	w1, w1, 31
	add	w0, w0, w1
	and	w1, w0, 255
	ldrb	w0, [sp, 31]
	mul	w0, w1, w0
	strb	w0, [sp, 31]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L3
	ldrb	w0, [sp, 31]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	arraySign, .-arraySign
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
