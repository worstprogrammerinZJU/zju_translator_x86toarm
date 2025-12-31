	.arch armv8-a
	.file	"0209-minimum-size-subarray-sum.c"
	.text
	.align	2
	.global	min
	.type	min, %function
min:
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
	csel	w0, w1, w0, le
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	min, .-min
	.align	2
	.global	minSubArrayLen
	.type	minSubArrayLen, %function
minSubArrayLen:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	w2, [sp, 24]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	b	.L4
.L9:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L7
.L8:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	min
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L8
.L5:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	minSubArrayLen, .-minSubArrayLen
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
