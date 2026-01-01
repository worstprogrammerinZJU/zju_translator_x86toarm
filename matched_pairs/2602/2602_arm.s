	.arch armv8-a
	.file	"2602.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	x12, sp, #983040
	.cfi_def_cfa 12, 983040
.LPSRL0:
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	.cfi_def_cfa_register 31
	mov	x12, 16992
	sub	sp, sp, x12
	.cfi_def_cfa_offset 1000032
	stp	x29, x30, [sp]
	.cfi_offset 29, -1000032
	.cfi_offset 30, -1000024
	mov	x29, sp
	add	x0, sp, 999424
	add	x0, x0, 596
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 999424
	ldr	w0, [x0, 596]
	sub	w0, w0, #1
	add	x1, sp, 999424
	str	w0, [x1, 604]
	b	.L2
.L5:
	bl	getchar
	and	w2, w0, 255
	add	x0, sp, 999424
	ldrsw	x0, [x0, 604]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	bl	getchar
	bl	getchar
	sub	w2, w0, #48
	add	x0, sp, 999424
	ldrsw	x0, [x0, 604]
	add	x1, sp, 16
	ldrb	w1, [x1, x0]
	and	w0, w2, 255
	add	w0, w1, w0
	and	w2, w0, 255
	add	x0, sp, 999424
	ldrsw	x0, [x0, 604]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	add	x1, sp, 999424
	str	w0, [x1, 600]
	b	.L3
.L4:
	add	x0, sp, 999424
	ldrsw	x0, [x0, 600]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #10
	and	w2, w0, 255
	add	x0, sp, 999424
	ldrsw	x0, [x0, 600]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	add	x0, sp, 999424
	ldr	w0, [x0, 600]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 600]
	add	x0, sp, 999424
	ldrsw	x0, [x0, 600]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 1
	and	w2, w0, 255
	add	x0, sp, 999424
	ldrsw	x0, [x0, 600]
	add	x1, sp, 16
	strb	w2, [x1, x0]
.L3:
	add	x0, sp, 999424
	ldrsw	x0, [x0, 600]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 57
	bhi	.L4
	bl	getchar
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	sub	w0, w0, #1
	add	x1, sp, 999424
	str	w0, [x1, 604]
.L2:
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	cmp	w0, 0
	bge	.L5
	add	x0, sp, 999424
	ldr	w0, [x0, 596]
	sub	w0, w0, #1
	add	x1, sp, 999424
	str	w0, [x1, 604]
	b	.L6
.L7:
	add	x0, sp, 999424
	ldrsw	x0, [x0, 604]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	sub	w0, w0, #1
	add	x1, sp, 999424
	str	w0, [x1, 604]
.L6:
	add	x0, sp, 999424
	ldr	w0, [x0, 604]
	cmp	w0, 0
	bge	.L7
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 608
	.cfi_def_cfa_offset 999424
	add	sp, sp, 999424
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
