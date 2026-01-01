	.arch armv8-a
	.file	"0448-Find-All-Numbers-Disappeared-in-an-Array.c"
	.text
	.align	2
	.global	findDisappearedNumbers
	.type	findDisappearedNumbers, %function
findDisappearedNumbers:
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
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	str	wzr, [sp, 76]
	b	.L2
.L3:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w1, w0, w0, ge
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	neg	w1, w1
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L2:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 72]
	b	.L4
.L6:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L5
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 24]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 72]
	add	w1, w1, 1
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L4:
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	findDisappearedNumbers, .-findDisappearedNumbers
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
