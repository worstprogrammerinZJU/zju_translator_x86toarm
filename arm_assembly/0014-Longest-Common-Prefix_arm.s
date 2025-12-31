	.arch armv8-a
	.file	"0014-Longest-Common-Prefix.c"
	.text
	.align	2
	.global	longestCommonPrefix
	.type	longestCommonPrefix, %function
longestCommonPrefix:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	bl	strlen
	str	w0, [sp, 48]
	str	wzr, [sp, 56]
	b	.L2
.L8:
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L3
.L7:
	ldrsw	x19, [sp, 56]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	cmp	x19, x0
	beq	.L4
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L5
.L4:
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	b	.L6
.L5:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L8
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
.L6:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	longestCommonPrefix, .-longestCommonPrefix
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
