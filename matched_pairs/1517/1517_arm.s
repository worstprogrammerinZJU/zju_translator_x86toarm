	.arch armv8-a
	.file	"1517.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"n e\n- -----------\n0 %.9lf\n"
	.align	3
.LC1:
	.string	"%d %.9lf\n"
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
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	fmov	d0, 1.0e+0
	str	d0, [sp, 24]
	ldr	d0, [sp, 32]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	ldr	d1, [sp, 24]
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 9
	ble	.L3
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
