	.arch armv8-a
	.file	"3425.c"
	.text
	.global	N
	.bss
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.zero	4
	.global	question
	.align	3
	.type	question, %object
	.size	question, 4000004
question:
	.zero	4000004
	.global	sum
	.align	2
	.type	sum, %object
	.size	sum, 4
sum:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
.L6:
	add	x2, sp, 16
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w0, 10
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	b	.L4
.L3:
	ldr	w1, [sp, 24]
	adrp	x0, question
	add	x0, x0, :lo12:question
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	ldr	w3, [sp, 24]
	adrp	x0, question
	add	x0, x0, :lo12:question
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, question
	add	x0, x0, :lo12:question
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 16]
	cmp	w0, 1
	bne	.L5
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w0, 40
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	b	.L4
.L5:
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w0, 20
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
