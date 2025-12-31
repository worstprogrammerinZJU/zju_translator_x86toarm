	.arch armv8-a
	.file	"0056-merge-intervals.c"
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
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	compareIntervals, .-compareIntervals
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	w0, [sp, 68]
	cmp	w0, 1
	bgt	.L4
	ldr	x0, [sp, 48]
	ldr	w1, [sp, 68]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	b	.L5
.L4:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 104]
	str	wzr, [sp, 124]
	b	.L6
.L7:
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 3
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 124]
	lsl	x0, x0, 3
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L6:
	ldr	w1, [sp, 124]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L7
	adrp	x0, compareIntervals
	add	x3, x0, :lo12:compareIntervals
	mov	x2, 8
	ldr	w1, [sp, 68]
	ldr	x0, [sp, 104]
	bl	qsort
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 96]
	str	wzr, [sp, 120]
	str	wzr, [sp, 116]
	b	.L8
.L12:
	ldr	w0, [sp, 120]
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 96]
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldrsw	x0, [sp, 116]
	lsl	x0, x0, 3
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
.L9:
	ldrsw	x0, [sp, 116]
	lsl	x0, x0, 3
	ldr	x1, [sp, 104]
	add	x1, x1, x0
	ldr	w0, [sp, 120]
	add	w2, w0, 1
	str	w2, [sp, 120]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 96]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	b	.L11
.L10:
	ldrsw	x0, [sp, 116]
	lsl	x0, x0, 3
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x2, [sp, 96]
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	ldrsw	x2, [sp, 120]
	lsl	x2, x2, 3
	sub	x2, x2, #8
	ldr	x3, [sp, 96]
	add	x2, x3, x2
	cmp	w1, w0
	csel	w0, w1, w0, ge
	str	w0, [x2, 4]
.L11:
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
.L8:
	ldr	w1, [sp, 116]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L12
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 88]
	ldrsw	x0, [sp, 120]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	str	wzr, [sp, 112]
	b	.L13
.L14:
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x19, x1, x0
	mov	x0, 8
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 96]
	add	x1, x1, x0
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	x0, [x0]
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 96]
	add	x1, x1, x0
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 112]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
.L13:
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 120]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 48]
	ldr	w1, [sp, 120]
	str	w1, [x0]
	ldr	x0, [sp, 104]
	bl	free
	ldr	x0, [sp, 96]
	bl	free
	ldr	x0, [sp, 88]
.L5:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
