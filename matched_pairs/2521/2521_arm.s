	.arch armv8-a
	.file	"2521.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d%d"
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x3, sp, 16
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L3:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x3, sp, 16
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
