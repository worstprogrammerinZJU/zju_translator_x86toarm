	.arch armv8-a
	.file	"3107.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	balance
	.align	3
	.type	balance, %object
	.size	balance, 200004
balance:
	.zero	200004
	.global	num
	.align	3
	.type	num, %object
	.size	num, 200004
num:
	.zero	200004
	.global	Node
	.align	3
	.type	Node, %object
	.size	Node, 400008
Node:
	.zero	400008
	.text
	.align	2
	.global	insert
	.type	insert, %function
insert:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 28]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 28]
	ldr	x2, [sp, 40]
	str	x2, [x0, x1, lsl 3]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	insert, .-insert
	.align	2
	.global	cal
	.type	cal, %function
cal:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 60]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 56]
	adrp	x0, Node
	add	x0, x0, :lo12:Node
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 48]
	b	.L3
.L7:
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L4
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	cal
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 40]
	str	w0, [sp, 60]
.L5:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 56]
	b	.L6
.L4:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L6:
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	str	x0, [sp, 48]
.L3:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L7
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 60]
	cmp	w2, w0
	csel	w2, w1, w0, ge
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	cal, .-cal
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 50000
	str	w0, [sp, 24]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L10
.L11:
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 16]
	bl	insert
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	bl	insert
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L10:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L11
	mov	w1, 1
	mov	w0, 0
	bl	cal
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L12
.L14:
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L13
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
.L13:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L14
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L15
.L17:
	adrp	x0, balance
	add	x0, x0, :lo12:balance
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L16
	ldr	w1, [sp, 28]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L16:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L15:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
