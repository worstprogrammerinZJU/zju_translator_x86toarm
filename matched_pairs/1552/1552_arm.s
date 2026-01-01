	.arch armv8-a
	.file	"1552.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L11:
	str	wzr, [sp, 108]
	str	wzr, [sp, 96]
	b	.L3
.L4:
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	add	x1, sp, 24
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L3:
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 104]
	b	.L5
.L10:
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	lsl	w0, w0, 1
	str	w0, [sp, 92]
	str	wzr, [sp, 100]
	b	.L6
.L9:
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	b	.L8
.L7:
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
.L6:
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L9
.L8:
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
.L5:
	ldr	w1, [sp, 104]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 96]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 24]
	cmn	w0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
