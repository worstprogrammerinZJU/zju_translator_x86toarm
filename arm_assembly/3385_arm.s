	.arch armv8-a
	.file	"3385.c"
	.text
	.global	A
	.bss
	.align	2
	.type	A, %object
	.size	A, 4
A:
	.zero	4
	.global	a
	.align	2
	.type	a, %object
	.size	a, 4
a:
	.zero	4
	.global	B
	.align	2
	.type	B, %object
	.size	B, 4
B:
	.zero	4
	.global	b
	.align	2
	.type	b, %object
	.size	b, 4
b:
	.zero	4
	.global	P
	.align	2
	.type	P, %object
	.size	P, 4
P:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d%d%d"
	.align	3
.LC1:
	.string	"Yes"
	.align	3
.LC2:
	.string	"No"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, P
	add	x5, x0, :lo12:P
	adrp	x0, b
	add	x4, x0, :lo12:b
	adrp	x0, B
	add	x3, x0, :lo12:B
	adrp	x0, a
	add	x2, x0, :lo12:a
	adrp	x0, A
	add	x1, x0, :lo12:A
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
.L3:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L4
.L2:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L4:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
