	.arch armv8-a
	.file	"1930-unique-length-3-palindromic-subsequences.c"
	.text
	.align	2
	.global	countPalindromicSubsequence
	.type	countPalindromicSubsequence, %function
countPalindromicSubsequence:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -368]!
	.cfi_def_cfa_offset 368
	.cfi_offset 29, -368
	.cfi_offset 30, -360
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 352]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 240
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	x1, [x1, 96]
	str	x1, [x0, 96]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 136
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	x1, [x1, 96]
	str	x1, [x0, 96]
	str	wzr, [sp, 364]
	b	.L2
.L5:
	ldrsw	x0, [sp, 364]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #97
	str	w0, [sp, 344]
	ldrsw	x0, [sp, 344]
	lsl	x0, x0, 2
	add	x1, sp, 240
	ldr	w0, [x1, x0]
	cmn	w0, #1
	bne	.L3
	ldrsw	x0, [sp, 344]
	lsl	x0, x0, 2
	add	x1, sp, 240
	ldr	w2, [sp, 364]
	str	w2, [x1, x0]
	b	.L4
.L3:
	ldrsw	x0, [sp, 344]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w2, [sp, 364]
	str	w2, [x1, x0]
.L4:
	ldr	w0, [sp, 364]
	add	w0, w0, 1
	str	w0, [sp, 364]
.L2:
	ldr	w1, [sp, 364]
	ldr	w0, [sp, 352]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 356]
	str	wzr, [sp, 364]
	b	.L6
.L11:
	ldrsw	x0, [sp, 364]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	cmn	w0, #1
	beq	.L7
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 32
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	x1, [x1, 96]
	str	x1, [x0, 96]
	ldrsw	x0, [sp, 364]
	lsl	x0, x0, 2
	add	x1, sp, 240
	ldr	w0, [x1, x0]
	add	w0, w0, 1
	str	w0, [sp, 360]
	b	.L8
.L10:
	ldrsw	x0, [sp, 360]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #97
	str	w0, [sp, 348]
	ldrsw	x0, [sp, 348]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmn	w0, #1
	bne	.L9
	ldrsw	x0, [sp, 348]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [sp, 360]
	str	w2, [x1, x0]
	ldr	w0, [sp, 356]
	add	w0, w0, 1
	str	w0, [sp, 356]
.L9:
	ldr	w0, [sp, 360]
	add	w0, w0, 1
	str	w0, [sp, 360]
.L8:
	ldrsw	x0, [sp, 364]
	lsl	x0, x0, 2
	add	x1, sp, 136
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 360]
	cmp	w1, w0
	blt	.L10
.L7:
	ldr	w0, [sp, 364]
	add	w0, w0, 1
	str	w0, [sp, 364]
.L6:
	ldr	w0, [sp, 364]
	cmp	w0, 25
	ble	.L11
	ldr	w0, [sp, 356]
	ldp	x29, x30, [sp], 368
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	countPalindromicSubsequence, .-countPalindromicSubsequence
	.section	.rodata
	.align	3
.LC0:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
