	.arch armv8-a
	.file	"0096-unique-binary-search-trees.c"
	.text
	.align	2
	.global	numTrees
	.type	numTrees, %function
numTrees:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	add	x0, x0, 4
	mov	w1, 1
	str	w1, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp, 32]
	str	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	str	wzr, [x0]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L3
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w3, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w3, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x3, [sp, 32]
	add	x0, x3, x0
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x3, [sp, 32]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bge	.L5
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	numTrees, .-numTrees
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
