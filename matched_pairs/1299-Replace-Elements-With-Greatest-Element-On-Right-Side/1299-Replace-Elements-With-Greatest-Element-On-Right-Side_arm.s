	.arch armv8-a
	.file	"1299-Replace-Elements-With-Greatest-Element-On-Right-Side.c"
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
	.global	replaceElements
	.type	replaceElements, %function
replaceElements:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	mov	w0, -1
	str	w0, [sp, 60]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L4
.L5:
	ldr	w0, [sp, 60]
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L4:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L5
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	replaceElements, .-replaceElements
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
