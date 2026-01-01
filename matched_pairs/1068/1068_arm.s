	.arch armv8-a
	.file	"1068.c"
	.text
	.global	stack
	.bss
	.align	3
	.type	stack, %object
	.size	stack, 400
stack:
	.zero	400
	.global	top
	.align	2
	.type	top, %object
	.size	top, 4
top:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d "
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
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
.L10:
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	wzr, [x0]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	str	wzr, [sp, 32]
	b	.L3
.L9:
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 36]
	b	.L4
.L5:
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, top
	add	x1, x1, :lo12:top
	str	w2, [x1]
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	sxtw	x0, w0
	mov	w2, 1
	str	w2, [x1, x0, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 20]
	str	w0, [sp, 32]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L6
.L8:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L6:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	blt	.L7
	adrp	x0, stack
	add	x0, x0, :lo12:stack
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L8
.L7:
	adrp	x0, stack
	add	x0, x0, :lo12:stack
	ldrsw	x1, [sp, 36]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
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
