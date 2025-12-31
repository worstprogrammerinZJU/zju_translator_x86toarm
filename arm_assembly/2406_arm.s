	.arch armv8-a
	.file	"2406.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC2:
	.string	"1"
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
	mov	x12, 17008
	sub	sp, sp, x12
	.cfi_def_cfa_offset 1000048
	stp	x29, x30, [sp]
	.cfi_offset 29, -1000048
	.cfi_offset 30, -1000040
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L12:
	add	x0, sp, 999424
	str	wzr, [x0, 612]
	add	x0, sp, 24
	bl	strlen
	add	x1, sp, 999424
	str	w0, [x1, 608]
	mov	w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 620]
	b	.L3
.L10:
	add	x0, sp, 999424
	ldrsw	x0, [x0, 620]
	add	x1, sp, 24
	ldrb	w1, [x1, x0]
	ldrb	w0, [sp, 24]
	cmp	w1, w0
	bne	.L4
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	add	x1, sp, 999424
	ldr	w1, [x1, 620]
	sdiv	w2, w0, w1
	add	x1, sp, 999424
	ldr	w1, [x1, 620]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 616]
	b	.L5
.L8:
	add	x0, sp, 999424
	ldrsw	x0, [x0, 616]
	add	x1, sp, 24
	ldrb	w1, [x1, x0]
	add	x0, sp, 999424
	ldr	w2, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	sub	w0, w2, w0
	sxtw	x0, w0
	add	x2, sp, 24
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L14
	add	x0, sp, 999424
	ldr	w0, [x0, 616]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 616]
.L5:
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	blt	.L8
	b	.L7
.L14:
	nop
.L7:
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 612]
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	sdiv	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L9
.L4:
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 620]
.L3:
	add	x0, sp, 999424
	ldr	w1, [x0, 620]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	blt	.L10
.L9:
	add	x0, sp, 999424
	ldr	w0, [x0, 612]
	cmp	w0, 0
	bne	.L11
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L11:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldrb	w0, [sp, 24]
	cmp	w0, 46
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 624
	.cfi_def_cfa_offset 999424
	add	sp, sp, 999424
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
