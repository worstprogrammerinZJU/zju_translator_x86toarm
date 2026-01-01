	.arch armv8-a
	.file	"1565.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%d\n"
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
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L7:
	str	wzr, [sp, 60]
	b	.L3
.L4:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L3:
	ldrsw	x0, [sp, 60]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L5
.L6:
	ldr	w0, [sp, 48]
	lsl	w0, w0, 1
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w1, w0, #48
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	mul	w0, w1, w0
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L5:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L6
	ldr	w1, [sp, 52]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldrb	w0, [sp, 16]
	cmp	w0, 48
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
