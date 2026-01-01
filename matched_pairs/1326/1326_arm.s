	.arch armv8-a
	.file	"1326.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%s%d%s"
	.align	3
.LC2:
	.string	"0"
	.align	3
.LC3:
	.string	"%d\n"
	.align	3
.LC4:
	.string	"#"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L9:
	str	wzr, [sp, 236]
	b	.L3
.L8:
	add	x2, sp, 24
	add	x1, sp, 232
	add	x0, sp, 128
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrb	w0, [sp, 24]
	cmp	w0, 70
	bne	.L4
	ldr	w0, [sp, 232]
	lsl	w0, w0, 1
	ldr	w1, [sp, 236]
	add	w0, w1, w0
	str	w0, [sp, 236]
	b	.L5
.L4:
	ldrb	w0, [sp, 24]
	cmp	w0, 66
	bne	.L6
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 232]
	add	w0, w1, w0
	ldr	w1, [sp, 236]
	add	w0, w1, w0
	str	w0, [sp, 236]
	b	.L5
.L6:
	ldr	w0, [sp, 232]
	cmp	w0, 499
	bgt	.L7
	ldr	w0, [sp, 236]
	add	w0, w0, 500
	str	w0, [sp, 236]
	b	.L5
.L7:
	ldr	w0, [sp, 232]
	ldr	w1, [sp, 236]
	add	w0, w1, w0
	str	w0, [sp, 236]
.L5:
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L3:
	add	x2, sp, 128
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 236]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	add	x2, sp, 128
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
