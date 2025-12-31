	.arch armv8-a
	.file	"0058-length-of-the-last-word.c"
	.text
	.align	2
	.global	lengthOfLastWord
	.type	lengthOfLastWord, %function
lengthOfLastWord:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	mov	w0, -1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L2
.L5:
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 20]
	str	w0, [sp, 28]
.L3:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 24]
	b	.L7
.L6:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w0, w0, #1
.L7:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	lengthOfLastWord, .-lengthOfLastWord
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
