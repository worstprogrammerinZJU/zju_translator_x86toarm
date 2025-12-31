	.arch armv8-a
	.file	"2876.c"
	.text
	.global	base
	.data
	.align	3
	.type	base, %object
	.size	base, 52
base:
	.word	0
	.word	1
	.word	3
	.word	9
	.word	27
	.word	81
	.word	243
	.word	729
	.word	2187
	.word	6561
	.word	19683
	.word	59049
	.word	177147
	.text
	.align	2
	.global	print
	.type	print, %function
print:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L2
	mov	w0, 45
	bl	putchar
	b	.L6
.L2:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	bl	print
	adrp	x0, base
	add	x0, x0, :lo12:base
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 44]
	b	.L4
.L5:
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	bl	print
.L6:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	print, .-print
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L8
.L9:
	ldr	w0, [sp, 28]
	bl	print
	mov	w0, 10
	bl	putchar
.L8:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
