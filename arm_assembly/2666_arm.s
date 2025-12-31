	.arch armv8-a
	.file	"2666.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"God help me!"
	.align	3
.LC2:
	.string	"%d%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	b	.L2
.L7:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	str	d0, [sp, 56]
	ldr	d0, [sp, 56]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	str	d0, [sp, 56]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	ldr	d0, [sp, 56]
	fdiv	d0, d0, d1
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	log
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	exp
	fmov	d1, d0
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	ldr	d1, [sp, 48]
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L9
	b	.L10
.L9:
	ldr	d1, [sp, 48]
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
.L10:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L2:
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmp	w0, 0
	bne	.L7
	b	.L4
.L11:
	nop
.L4:
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.word	-1571644103
	.word	1066524486
	.align	3
.LC4:
	.word	-394924785
	.word	1073460858
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
