	.arch armv8-a
	.file	"0329-longest-increasing-path-in-a-matrix.c"
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
	.global	dfs
	.type	dfs, %function
dfs:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	w3, [sp, 24]
	str	w4, [sp, 20]
	str	w5, [sp, 16]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L5
.L4:
	str	wzr, [sp, 60]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	ble	.L6
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w5, [sp, 16]
	mov	w4, w0
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
.L6:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	ble	.L7
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	mov	w5, w0
	ldr	w4, [sp, 20]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
.L7:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 20]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	ldr	w5, [sp, 16]
	mov	w4, w0
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
.L8:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bge	.L9
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	mov	w5, w0
	ldr	w4, [sp, 20]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
.L9:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
.L5:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	dfs, .-dfs
	.align	2
	.global	longestIncreasingPath
	.type	longestIncreasingPath, %function
longestIncreasingPath:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	str	w0, [sp, 68]
	str	wzr, [sp, 92]
	b	.L11
.L12:
	ldrsw	x2, [sp, 68]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x1, 4
	mov	x0, x2
	bl	calloc
	str	x0, [x19]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L11:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 84]
	str	wzr, [sp, 92]
	b	.L13
.L16:
	str	wzr, [sp, 88]
	b	.L14
.L15:
	ldr	w5, [sp, 88]
	ldr	w4, [sp, 92]
	ldr	w3, [sp, 68]
	ldr	w2, [sp, 52]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 84]
	bl	max
	str	w0, [sp, 84]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L14:
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L13:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 84]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	longestIncreasingPath, .-longestIncreasingPath
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
