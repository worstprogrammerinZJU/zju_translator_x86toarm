	.arch armv8-a
	.file	"3325.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	min
	.align	2
	.type	min, %object
	.size	min, 4
min:
	.zero	4
	.global	max
	.align	2
	.type	max, %object
	.size	max, 4
max:
	.zero	4
	.global	sum
	.align	2
	.type	sum, %object
	.size	sum, 4
sum:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L2
.L7:
	adrp	x0, min
	add	x0, x0, :lo12:min
	mov	w1, 1001
	str	w1, [x0]
	adrp	x0, max
	add	x0, x0, :lo12:max
	mov	w1, -1
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L3
.L6:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	ldr	w1, [sp, 24]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 24]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
.L4:
	ldr	w1, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	w1, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #2
	sdiv	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L2:
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L7
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
