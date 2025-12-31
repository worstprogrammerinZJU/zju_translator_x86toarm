	.arch armv8-a
	.file	"0118-pascals-triangle.c"
	.text
	.align	2
	.global	generate
	.type	generate, %function
generate:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	w0, [sp, 60]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 92]
	b	.L2
.L3:
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 92]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L3
	mov	w0, 2
	str	w0, [sp, 88]
	b	.L4
.L7:
	mov	w0, 1
	str	w0, [sp, 84]
	b	.L5
.L6:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x3, [sp, 72]
	add	x0, x3, x0
	ldr	x3, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L5:
	ldr	w1, [sp, 84]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L4:
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	generate, .-generate
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
