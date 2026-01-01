	.arch armv8-a
	.file	"3176.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n%d"
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #4048
	.cfi_def_cfa_offset 4048
	stp	x29, x30, [sp]
	.cfi_offset 29, -4048
	.cfi_offset 30, -4040
	mov	x29, sp
	str	wzr, [sp, 4036]
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L2
.L5:
	mov	w1, 1
	ldr	w0, [sp, 4036]
	sub	w0, w1, w0
	str	w0, [sp, 4036]
	add	x2, sp, 32
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	mov	w1, 1
	ldr	w0, [sp, 4036]
	sub	w0, w1, w0
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 32
	str	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 4040]
	b	.L3
.L4:
	add	x2, sp, 32
	ldrsw	x3, [sp, 4040]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrsw	x2, [sp, 4040]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w3, [x1, x0]
	mov	w1, 1
	ldr	w0, [sp, 4036]
	sub	w0, w1, w0
	ldrsw	x2, [sp, 4040]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	mov	w1, 1
	ldr	w0, [sp, 4036]
	sub	w1, w1, w0
	ldr	w0, [sp, 4040]
	sub	w0, w0, #1
	sxtw	x4, w0
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w2, w0
	csel	w0, w2, w0, ge
	add	w2, w3, w0
	ldrsw	x3, [sp, 4040]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
.L3:
	ldr	w1, [sp, 4040]
	ldr	w0, [sp, 4044]
	cmp	w1, w0
	blt	.L4
	add	x2, sp, 32
	ldrsw	x3, [sp, 4044]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrsw	x2, [sp, 4044]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	mov	w1, 1
	ldr	w0, [sp, 4036]
	sub	w1, w1, w0
	ldr	w0, [sp, 4044]
	sub	w0, w0, #1
	sxtw	x3, w0
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x3, [sp, 4044]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L2:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L5
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4040]
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L6
.L8:
	ldrsw	x2, [sp, 4044]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	bge	.L7
	ldrsw	x2, [sp, 4044]
	ldrsw	x1, [sp, 4036]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	str	w0, [sp, 4040]
.L7:
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L6:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 4040]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
