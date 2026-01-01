	.arch armv8-a
	.file	"1799-maximize-score-after-n-operations.c"
	.text
	.align	2
	.global	greatestCommonDivisor
	.type	greatestCommonDivisor, %function
greatestCommonDivisor:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	b	.L2
.L3:
	ldr	w0, [sp, 8]
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 8]
	ldr	w0, [sp, 28]
	str	w0, [sp, 12]
.L2:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 12]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	greatestCommonDivisor, .-greatestCommonDivisor
	.align	2
	.global	max
	.type	max, %function
max:
.LFB7:
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
.LFE7:
	.size	max, .-max
	.align	2
	.global	func
	.type	func, %function
func:
.LFB8:
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
	str	w2, [sp, 64]
	str	x3, [sp, 56]
	str	x4, [sp, 48]
	str	w5, [sp, 44]
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 100]
	cmp	w1, w0
	ble	.L8
	mov	w0, 0
	b	.L9
.L8:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L10
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L9
.L10:
	str	wzr, [sp, 108]
	b	.L11
.L18:
	ldr	w0, [sp, 108]
	ldr	w1, [sp, 64]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L19
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 104]
	b	.L14
.L17:
	ldr	w0, [sp, 104]
	ldr	w1, [sp, 64]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 108]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 104]
	mov	w2, 1
	lsl	w0, w2, w0
	orr	w0, w1, w0
	ldr	w1, [sp, 64]
	orr	w0, w1, w0
	str	w0, [sp, 96]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 68]
	mul	w19, w1, w0
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	ldr	w5, [sp, 44]
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	w2, [sp, 96]
	mov	w1, w0
	ldr	x0, [sp, 72]
	bl	func
	add	w0, w19, w0
	str	w0, [sp, 92]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	ldr	w1, [sp, 92]
	mov	w0, w2
	bl	max
	str	w0, [x19]
	b	.L16
.L20:
	nop
.L16:
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
.L14:
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L17
	b	.L13
.L19:
	nop
.L13:
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
.L11:
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L18
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
.L9:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	func, .-func
	.align	2
	.global	maxScore
	.type	maxScore, %function
maxScore:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 88]
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 84]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 108]
	b	.L22
.L23:
	ldrsw	x0, [sp, 88]
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
.L22:
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L23
	str	wzr, [sp, 104]
	b	.L24
.L27:
	str	wzr, [sp, 100]
	b	.L25
.L26:
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w3, [x0]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	add	x19, x1, x0
	mov	w1, w3
	mov	w0, w2
	bl	greatestCommonDivisor
	str	w0, [x19]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
.L25:
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L26
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
.L24:
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L27
	mov	x0, 65536
	bl	malloc
	str	x0, [sp, 64]
	str	wzr, [sp, 96]
	b	.L28
.L29:
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	mov	w1, -1
	str	w1, [x0]
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
.L28:
	ldr	w1, [sp, 96]
	mov	w0, 16383
	cmp	w1, w0
	ble	.L29
	ldr	w5, [sp, 88]
	ldr	x4, [sp, 72]
	ldr	x3, [sp, 64]
	mov	w2, 0
	mov	w1, 1
	ldr	x0, [sp, 40]
	bl	func
	str	w0, [sp, 60]
	str	wzr, [sp, 92]
	b	.L30
.L31:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L30:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L31
	ldr	x0, [sp, 72]
	bl	free
	ldr	x0, [sp, 64]
	bl	free
	ldr	w0, [sp, 60]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	maxScore, .-maxScore
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
