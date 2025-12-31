	.arch armv8-a
	.file	"2346.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"10"
	.align	3
.LC2:
	.string	"670"
	.align	3
.LC3:
	.string	"55252"
	.align	3
.LC4:
	.string	"4816030"
	.align	3
.LC5:
	.string	"432457640"
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
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bne	.L3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L3:
	ldr	w0, [sp, 28]
	cmp	w0, 6
	bne	.L4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L4:
	ldr	w0, [sp, 28]
	cmp	w0, 8
	bne	.L5
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L5:
	ldr	w0, [sp, 28]
	cmp	w0, 10
	bne	.L6
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
.L6:
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
