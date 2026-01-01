	.arch armv8-a
	.file	"2509.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d%d"
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
	b	.L2
.L5:
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L3
.L4:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w2, w1, w0
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w3, w0, w1
	mul	w1, w3, w1
	sub	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 24]
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
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
