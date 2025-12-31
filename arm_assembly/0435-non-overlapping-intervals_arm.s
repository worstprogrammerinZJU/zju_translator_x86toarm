	.arch armv8-a
	.file	"0435-non-overlapping-intervals.c"
	.text
	.align	2
	.global	compareIntervals
	.type	compareIntervals, %function
compareIntervals:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 4]
	ldr	x0, [sp]
	ldr	w0, [x0, 4]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	compareIntervals, .-compareIntervals
	.align	2
	.global	eraseOverlapIntervals
	.type	eraseOverlapIntervals, %function
eraseOverlapIntervals:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L4
	mov	w0, 0
	b	.L5
.L4:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 76]
	b	.L6
.L7:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L6:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L7
	adrp	x0, compareIntervals
	add	x3, x0, :lo12:compareIntervals
	mov	x2, 8
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 56]
	bl	qsort
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 4]
	str	w0, [sp, 72]
	mov	w0, 1
	str	w0, [sp, 68]
	mov	w0, 1
	str	w0, [sp, 64]
	b	.L8
.L10:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bgt	.L9
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L9:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L8:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	ldr	x0, [sp, 56]
	bl	free
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 68]
	sub	w0, w1, w0
.L5:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	eraseOverlapIntervals, .-eraseOverlapIntervals
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
