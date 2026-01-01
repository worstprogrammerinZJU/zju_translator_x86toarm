	.arch armv8-a
	.file	"3282.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 100
str:
	.zero	100
	.global	left
	.align	3
	.type	left, %object
	.size	left, 400000
left:
	.zero	400000
	.global	right
	.align	3
	.type	right, %object
	.size	right, 400000
right:
	.zero	400000
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	l
	.align	2
	.type	l, %object
	.size	l, 4
l:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d %s"
	.align	3
.LC3:
	.string	"left"
	.align	3
.LC4:
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
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
.L19:
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, l
	add	x1, x0, :lo12:l
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w1, [x0]
	mov	w0, 100
	mul	w1, w1, w0
	adrp	x0, l
	add	x0, x0, :lo12:l
	str	w1, [x0]
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	str	wzr, [sp, 56]
	b	.L3
.L6:
	add	x1, sp, 28
	adrp	x0, str
	add	x2, x0, :lo12:str
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	str	w1, [sp, 36]
	ldr	w2, [sp, 28]
	adrp	x1, left
	add	x1, x1, :lo12:left
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L5
.L4:
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	ldr	w2, [sp, 28]
	adrp	x1, right
	add	x1, x1, :lo12:right
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
.L5:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L6
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	b	.L7
.L10:
	adrp	x0, left
	add	x0, x0, :lo12:left
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, left
	add	x0, x0, :lo12:left
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 52]
	b	.L9
.L8:
	adrp	x0, left
	add	x0, x0, :lo12:left
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
.L9:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L7:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	b	.L11
.L14:
	adrp	x0, right
	add	x0, x0, :lo12:right
	ldrsw	x1, [sp, 56]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	adrp	x0, l
	add	x0, x0, :lo12:l
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, right
	add	x0, x0, :lo12:right
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 52]
	b	.L13
.L12:
	adrp	x0, right
	add	x0, x0, :lo12:right
	ldrsw	x1, [sp, 56]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
.L13:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L11:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L14
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L15
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L16
.L15:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 48]
	b	.L17
.L16:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L18
	ldr	w0, [sp, 40]
	lsl	w0, w0, 1
	str	w0, [sp, 48]
	b	.L17
.L18:
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	sub	w0, w0, #1
	str	w0, [sp, 48]
.L17:
	ldr	w1, [sp, 48]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L19
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
