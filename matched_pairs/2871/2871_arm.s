	.arch armv8-a
	.file	"2871.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf%lf"
	.align	3
.LC1:
	.string	"%.2lf\n"
	.align	3
.LC2:
	.string	"%lf"
	.align	3
.LC3:
	.string	"End of Output"
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
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L3:
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	d0, [sp, 16]
	str	d0, [sp, 24]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
.L2:
	ldr	d0, [sp, 16]
	mov	x0, 61572651155456
	movk	x0, 0x408f, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bgt	.L3
	ldr	d0, [sp, 16]
	mov	x0, 61572651155456
	movk	x0, 0x408f, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC4:
	.word	-1698910392
	.word	1048238066
	.align	3
.LC5:
	.word	-1698910392
	.word	-1099245582
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
