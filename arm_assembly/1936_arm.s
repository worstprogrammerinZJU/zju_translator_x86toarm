	.arch armv8-a
	.file	"1936.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
	.align	3
.LC2:
	.string	"%s %s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 131072
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 196608
	str	xzr, [sp, 1024]
	sub	sp, sp, #3424
	.cfi_def_cfa_offset 200032
	stp	x29, x30, [sp]
	.cfi_offset 29, -200032
	.cfi_offset 30, -200024
	mov	x29, sp
	b	.L2
.L9:
	add	x0, sp, 196608
	str	wzr, [x0, 3416]
	add	x0, sp, 196608
	str	wzr, [x0, 3420]
	b	.L3
.L7:
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L11
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w1, [x1, x0]
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3420]
	add	x2, sp, 24
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L6
	add	x0, sp, 196608
	ldr	w0, [x0, 3416]
	add	w0, w0, 1
	add	x1, sp, 196608
	str	w0, [x1, 3416]
.L6:
	add	x0, sp, 196608
	ldr	w0, [x0, 3420]
	add	w0, w0, 1
	add	x1, sp, 196608
	str	w0, [x1, 3420]
.L3:
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3420]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	b	.L5
.L11:
	nop
.L5:
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L2
.L8:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L2:
	add	x1, sp, 24
	add	x0, sp, 98304
	add	x0, x0, 1720
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 3424
	.cfi_def_cfa_offset 196608
	add	sp, sp, 196608
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
