	.arch armv8-a
	.file	"0332-reconstruct-itinerary.c"
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x2, [x0]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L2
	ldr	w0, [sp, 44]
	b	.L3
.L2:
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	cmp, .-cmp
	.align	2
	.global	dfs
	.type	dfs, %function
dfs:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	w2, [sp, 44]
	str	x3, [sp, 32]
	str	w4, [sp, 40]
	str	w5, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	x1, [x1, 8]
	str	x1, [x0]
	mov	w0, 1
	b	.L6
.L5:
	str	wzr, [sp, 76]
	b	.L7
.L10:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 8
	ldr	x2, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	mov	w5, w0
	ldr	w4, [sp, 76]
	ldr	x3, [sp, 32]
	ldr	w2, [sp, 44]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	dfs
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	b	.L6
.L9:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	wzr, [x0]
.L8:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L7:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
.L6:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	dfs, .-dfs
	.section	.rodata
	.align	3
.LC0:
	.string	"JFK"
	.text
	.align	2
	.global	findItinerary
	.type	findItinerary, %function
findItinerary:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	qsort
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	ldrsw	x0, [sp, 36]
	mov	x1, 4
	bl	calloc
	str	x0, [sp, 56]
	str	wzr, [sp, 72]
	str	wzr, [sp, 76]
	b	.L12
.L15:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x2, [x0]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L13
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 64]
	str	x1, [x0]
	mov	w5, 1
	ldr	w4, [sp, 76]
	ldr	x3, [sp, 64]
	ldr	w2, [sp, 36]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	dfs
	str	w0, [sp, 72]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	wzr, [x0]
.L13:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L12:
	ldr	w0, [sp, 72]
	cmp	w0, 0
	bne	.L14
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L15
.L14:
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	findItinerary, .-findItinerary
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
