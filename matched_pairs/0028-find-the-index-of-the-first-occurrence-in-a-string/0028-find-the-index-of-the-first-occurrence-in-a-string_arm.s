	.arch armv8-a
	.file	"0028-find-the-index-of-the-first-occurrence-in-a-string.c"
	.text
	.align	2
	.global	strStr
	.type	strStr, %function
strStr:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
.L2:
	str	wzr, [sp, 44]
	b	.L4
.L10:
	str	wzr, [sp, 40]
	b	.L5
.L8:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L11
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L8
	b	.L7
.L11:
	nop
.L7:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 44]
	b	.L3
.L9:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L10
	mov	w0, -1
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	strStr, .-strStr
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
