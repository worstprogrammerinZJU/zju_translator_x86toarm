	.arch armv8-a
	.file	"0973-k-closest-points-to-origin.c"
	.text
	.align	2
	.global	distance
	.type	distance, %function
distance:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 24]
	mul	w1, w1, w0
	ldr	w2, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w0, w1, w0
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	distance, .-distance
	.align	2
	.global	compare
	.type	compare, %function
compare:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	distance
	str	d0, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	bl	distance
	str	d0, [sp, 32]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bmi	.L9
	b	.L11
.L9:
	mov	w0, -1
	b	.L6
.L11:
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bgt	.L10
	b	.L12
.L10:
	mov	w0, 1
	b	.L6
.L12:
	mov	w0, 0
.L6:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	compare, .-compare
	.align	2
	.global	kClosest
	.type	kClosest, %function
kClosest:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	str	x2, [sp, 56]
	str	w3, [sp, 64]
	str	x4, [sp, 48]
	str	x5, [sp, 40]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 96]
	str	wzr, [sp, 108]
	b	.L14
.L15:
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x2, [sp, 96]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x2, [sp, 96]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
.L14:
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L15
	adrp	x0, compare
	add	x3, x0, :lo12:compare
	mov	x2, 8
	ldr	w1, [sp, 68]
	ldr	x0, [sp, 96]
	bl	qsort
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 88]
	ldr	x0, [sp, 48]
	ldr	w1, [sp, 64]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	str	wzr, [sp, 104]
	b	.L16
.L17:
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x19, x1, x0
	mov	x0, 8
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 96]
	add	x1, x1, x0
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	x0, [x0]
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 96]
	add	x1, x1, x0
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
.L16:
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 96]
	bl	free
	ldr	x0, [sp, 88]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	kClosest, .-kClosest
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
