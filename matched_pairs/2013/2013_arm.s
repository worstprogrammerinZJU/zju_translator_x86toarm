	.arch armv8-a
	.file	"2013.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"SET %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -432]!
	.cfi_def_cfa_offset 432
	.cfi_offset 29, -432
	.cfi_offset 30, -424
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 424]
	add	x0, sp, 420
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L9:
	str	wzr, [sp, 428]
	b	.L3
.L4:
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 428]
	add	w0, w0, 1
	str	w0, [sp, 428]
.L3:
	ldr	w0, [sp, 420]
	ldr	w1, [sp, 428]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 424]
	add	w1, w0, 1
	str	w1, [sp, 424]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 428]
	b	.L5
.L6:
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	bl	puts
	ldr	w0, [sp, 428]
	add	w0, w0, 2
	str	w0, [sp, 428]
.L5:
	ldr	w0, [sp, 420]
	ldr	w1, [sp, 428]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 420]
	sub	w1, w0, #1
	ldr	w0, [sp, 420]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	sub	w0, w1, w0
	str	w0, [sp, 428]
	b	.L7
.L8:
	add	x2, sp, 24
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x2, x0
	bl	puts
	ldr	w0, [sp, 428]
	sub	w0, w0, #2
	str	w0, [sp, 428]
.L7:
	ldr	w0, [sp, 428]
	cmp	w0, 0
	bgt	.L8
	add	x0, sp, 420
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 420]
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 432
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
