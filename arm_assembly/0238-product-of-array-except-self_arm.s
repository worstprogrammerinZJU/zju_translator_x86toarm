	.arch armv8-a
	.file	"0238-product-of-array-except-self.c"
	.text
	.align	2
	.global	productExceptSelf
	.type	productExceptSelf, %function
productExceptSelf:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	mov	x2, x0
	mov	w1, 1
	ldr	x0, [sp, 56]
	bl	memset
	mov	w0, 1
	str	w0, [sp, 76]
	str	wzr, [sp, 72]
	b	.L2
.L3:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	str	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	mul	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L2:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	mov	w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	b	.L4
.L5:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	mul	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	mul	w0, w1, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bge	.L5
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	productExceptSelf, .-productExceptSelf
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
