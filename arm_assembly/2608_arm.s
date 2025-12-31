	.arch armv8-a
	.file	"2608.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 48
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 10]
	str	q0, [x0, 10]
	b	.L2
.L6:
	mov	w0, -1
	strb	w0, [sp, 75]
	str	wzr, [sp, 76]
	b	.L3
.L5:
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 75]
	cmp	w1, w0
	beq	.L4
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L4:
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 75]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L3:
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	mov	w0, 10
	bl	putchar
.L2:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.string	"\001\002\003"
	.string	"\001\002"
	.string	""
	.string	"\002\002\004\005\005"
	.string	"\001\002\006\002\003"
	.string	"\001"
	.string	"\002"
	.ascii	"\002"
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
