	.arch armv8-a
	.file	"2316.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
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
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L6:
	str	wzr, [sp, 44]
	b	.L3
.L5:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x2, sp, 16
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	sub	w0, w0, #48
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 57
	bls	.L4
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	sub	w0, w0, #10
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	strb	w2, [x1, x0]
.L4:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
.L2:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	add	x0, sp, 32
	bl	puts
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
