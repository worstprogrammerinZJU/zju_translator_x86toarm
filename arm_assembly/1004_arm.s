	.arch armv8-a
	.file	"1004.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lf"
	.align	3
.LC1:
	.string	"$%.2lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	xzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L2
.L3:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 40]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 12
	ble	.L3
	fmov	d0, 1.2e+1
	ldr	d1, [sp, 40]
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
