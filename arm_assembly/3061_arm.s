	.arch armv8-a
	.file	"3061.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	S
	.align	2
	.type	S, %object
	.size	S, 4
S:
	.zero	4
	.global	sum
	.align	2
	.type	sum, %object
	.size	sum, 4
sum:
	.zero	4
	.global	min
	.align	2
	.type	min, %object
	.size	min, 4
min:
	.zero	4
	.global	sen
	.align	3
	.type	sen, %object
	.size	sen, 200000
sen:
	.zero	200000
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"0"
	.align	3
.LC3:
	.string	"%d\n"
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
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
.L15:
	adrp	x0, S
	add	x2, x0, :lo12:S
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L3
.L4:
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 1
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 24]
	ldrsh	w0, [x0, x1, lsl 1]
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L4
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L6
.L5:
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L7
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L6
.L7:
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	wzr, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
	b	.L8
.L10:
	ldr	w0, [sp, 20]
	add	w1, w0, 1
	str	w1, [sp, 20]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w0, [x1, x0, lsl 1]
	mov	w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
.L9:
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L10
	b	.L11
.L12:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w1, [x1, x0, lsl 1]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	sub	w1, w0, w1
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
.L11:
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	ldrsw	x2, [sp, 24]
	ldrsh	w1, [x1, x2, lsl 1]
	sub	w1, w0, w1
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L13
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
.L13:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, sen
	add	x1, x1, :lo12:sen
	sxtw	x0, w0
	ldrsh	w1, [x1, x0, lsl 1]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	sub	w1, w0, w1
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
.L8:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L9
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L6:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
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
