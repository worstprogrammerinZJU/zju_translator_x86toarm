	.arch armv8-a
	.file	"0980-unique-paths-iii.c"
	.text
	.global	OBSTACLE
	.section	.rodata
	.align	2
	.type	OBSTACLE, %object
	.size	OBSTACLE, 4
OBSTACLE:
	.word	-1
	.global	EMPTY
	.align	2
	.type	EMPTY, %object
	.size	EMPTY, 4
EMPTY:
	.zero	4
	.global	START
	.align	2
	.type	START, %object
	.size	START, 4
START:
	.word	1
	.global	END
	.align	2
	.type	END, %object
	.size	END, 4
END:
	.word	2
	.text
	.align	2
	.global	uniquePathsIII
	.type	uniquePathsIII, %function
uniquePathsIII:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	ldr	w0, [sp, 36]
	str	w0, [sp, 60]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 56]
	str	wzr, [sp, 68]
	b	.L2
.L8:
	str	wzr, [sp, 64]
	b	.L3
.L7:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	mov	w0, -1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	beq	.L4
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 68]
	str	w0, [sp, 92]
	ldr	w0, [sp, 64]
	str	w0, [sp, 88]
	b	.L6
.L5:
	mov	w0, 2
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 68]
	str	w0, [sp, 84]
	ldr	w0, [sp, 64]
	str	w0, [sp, 80]
	b	.L6
.L4:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 56]
	mul	w1, w1, w0
	ldr	w0, [sp, 64]
	add	w0, w1, w0
	mov	w1, 1
	lsl	w0, w1, w0
	ldr	w1, [sp, 72]
	orr	w0, w1, w0
	str	w0, [sp, 72]
.L6:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L3:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L2:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L8
	ldr	w7, [sp, 88]
	ldr	w6, [sp, 92]
	ldr	w5, [sp, 76]
	ldr	w4, [sp, 72]
	ldr	w3, [sp, 80]
	ldr	w2, [sp, 84]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	bl	solve
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	uniquePathsIII, .-uniquePathsIII
	.align	2
	.global	solve
	.type	solve, %function
solve:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	str	w4, [sp, 28]
	str	w5, [sp, 24]
	str	w6, [sp, 20]
	str	w7, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L11
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L11
	ldr	w0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	b	.L12
.L11:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	mov	w1, 1
	lsl	w0, w1, w0
	ldr	w1, [sp, 28]
	orr	w0, w1, w0
	str	w0, [sp, 28]
	str	wzr, [sp, 60]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w7, [sp, 16]
	mov	w6, w0
	ldr	w5, [sp, 24]
	ldr	w4, [sp, 28]
	ldr	w3, [sp, 32]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	solve
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
.L13:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L14
	ldr	w0, [sp, 20]
	add	w1, w0, 1
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	ldr	w7, [sp, 16]
	mov	w6, w0
	ldr	w5, [sp, 24]
	ldr	w4, [sp, 28]
	ldr	w3, [sp, 32]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	solve
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
.L14:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	ble	.L15
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	mov	w7, w0
	ldr	w6, [sp, 20]
	ldr	w5, [sp, 24]
	ldr	w4, [sp, 28]
	ldr	w3, [sp, 32]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	solve
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
.L15:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L16
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	mul	w1, w1, w0
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	add	w0, w0, 1
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L16
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	mov	w7, w0
	ldr	w6, [sp, 20]
	ldr	w5, [sp, 24]
	ldr	w4, [sp, 28]
	ldr	w3, [sp, 32]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	solve
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
.L16:
	ldr	w0, [sp, 60]
.L12:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	solve, .-solve
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
