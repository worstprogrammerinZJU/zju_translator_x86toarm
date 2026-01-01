	.arch armv8-a
	.file	"1659.c"
	.text
	.global	neighbor
	.bss
	.align	3
	.type	neighbor, %object
	.size	neighbor, 40
neighbor:
	.zero	40
	.global	place
	.align	3
	.type	place, %object
	.size	place, 40
place:
	.zero	40
	.global	lake
	.align	3
	.type	lake, %object
	.size	lake, 400
lake:
	.zero	400
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.text
	.align	2
	.global	sort
	.type	sort, %function
sort:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L2
.L6:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L3
.L5:
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L4
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 20]
	str	w2, [x0, x1, lsl 2]
.L4:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sort, .-sort
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"YES"
	.align	3
.LC2:
	.string	"%d "
	.align	3
.LC3:
	.string	"NO\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
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
	b	.L8
.L25:
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L9
.L10:
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 2
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 24]
	b	.L11
.L18:
	ldr	w0, [sp, 24]
	bl	sort
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L12
.L15:
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L13
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w4, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 20]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	sxtw	x3, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 20]
	ldr	w4, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	sxtw	x3, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
.L13:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L12:
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L14
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L15
.L14:
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L27
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L11:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L18
	b	.L17
.L27:
	nop
.L17:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L19
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	str	wzr, [sp, 24]
	b	.L20
.L23:
	str	wzr, [sp, 20]
	b	.L21
.L22:
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	ldrsw	x3, [sp, 20]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L21:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L22
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L20:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L23
	mov	w0, 10
	bl	putchar
	b	.L24
.L19:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L24:
	mov	x2, 400
	mov	w1, 0
	adrp	x0, lake
	add	x0, x0, :lo12:lake
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
