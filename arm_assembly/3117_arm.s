	.arch armv8-a
	.file	"3117.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s%d"
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC2:
	.string	"%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	b	.L2
.L8:
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L3
.L4:
	add	x1, sp, 84
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L3:
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L4
	ldr	w1, [sp, 76]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 88]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L2:
	add	x1, sp, 76
	add	x0, sp, 80
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 80]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L6
.L5:
	mov	w0, 1
	b	.L7
.L6:
	mov	w0, 0
.L7:
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
