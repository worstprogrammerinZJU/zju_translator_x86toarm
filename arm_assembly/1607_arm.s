	.arch armv8-a
	.file	"1607.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Cards  Overhang"
	.align	3
.LC1:
	.string	"%5d%10.3f\n"
	.align	3
.LC2:
	.string	"%ld"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	x12, sp, #786432
	.cfi_def_cfa 12, 786432
.LPSRL0:
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	.cfi_def_cfa_register 31
	mov	x12, 13600
	sub	sp, sp, x12
	.cfi_def_cfa_offset 800032
	stp	x29, x30, [sp]
	.cfi_offset 29, -800032
	.cfi_offset 30, -800024
	mov	x29, sp
	add	x0, sp, 786432
	str	xzr, [x0, 13592]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L2
.L3:
	ldr	w0, [sp, 20]
	lsl	w0, w0, 1
	scvtf	d0, w0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	add	x0, sp, 786432
	ldr	d1, [x0, 13592]
	fadd	d0, d1, d0
	add	x0, sp, 786432
	str	d0, [x0, 13592]
	ldr	w0, [sp, 20]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 24
	add	x2, sp, 786432
	ldr	d0, [x2, 13592]
	str	d0, [x1, x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	mov	w0, 34463
	movk	w0, 0x1, lsl 16
	cmp	w1, w0
	ble	.L3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L4
.L5:
	ldr	w2, [sp, 20]
	ldr	w0, [sp, 20]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 24
	ldr	d0, [x1, x0]
	mov	w1, w2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L4:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 1312
	.cfi_def_cfa_offset 798720
	add	sp, sp, 798720
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
