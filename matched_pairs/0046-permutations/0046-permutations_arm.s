	.arch armv8-a
	.file	"0046-permutations.c"
	.text
	.align	2
	.global	swap
	.type	swap, %function
swap:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.align	2
	.global	backtrack
	.type	backtrack, %function
backtrack:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	str	w5, [sp, 64]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	bne	.L3
	ldrsw	x0, [sp, 68]
	lsl	x2, x0, 2
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	str	wzr, [sp, 92]
	b	.L4
.L5:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L4:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L5
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 48]
	str	w1, [x0]
	b	.L2
.L3:
	ldr	w0, [sp, 64]
	str	w0, [sp, 88]
	b	.L7
.L8:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x2, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	mov	w5, w0
	ldr	x4, [sp, 40]
	ldr	x3, [sp, 48]
	ldr	x2, [sp, 56]
	ldr	w1, [sp, 68]
	ldr	x0, [sp, 72]
	bl	backtrack
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x2, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L7:
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L8
.L2:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	backtrack, .-backtrack
	.align	2
	.global	permute
	.type	permute, %function
permute:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L10
.L11:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	mul	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L10:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L11
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
	mov	w5, 0
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 56]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	backtrack
	str	wzr, [sp, 68]
	b	.L12
.L13:
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L12:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 48]
	bl	free
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	permute, .-permute
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
