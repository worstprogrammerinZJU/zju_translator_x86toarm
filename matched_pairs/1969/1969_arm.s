	.arch armv8-a
	.file	"1969.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"TERM %d IS %d/%d\n"
	.align	3
.LC1:
	.string	"%d"
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
	b	.L2
.L6:
	ldr	w0, [sp, 20]
	scvtf	d1, w0
	fmov	d0, 8.0e+0
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	bl	sqrt
	fmov	d1, d0
	fmov	d0, 1.0e+0
	fsub	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	fcvtzs	w0, d0
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	ldr	d1, [sp, 24]
	fcmp	d1, d0
	beq	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	ldr	w0, [sp, 44]
	mul	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	b	.L5
.L4:
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 20]
	ldr	w3, [sp, 36]
	ldr	w2, [sp, 40]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
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
