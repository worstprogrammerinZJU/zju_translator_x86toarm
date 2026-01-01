	.arch armv8-a
	.file	"1201.c"
	.text
	.global	f
	.bss
	.align	3
	.type	f, %object
	.size	f, 600012
f:
	.zero	600012
	.global	d
	.align	3
	.type	d, %object
	.size	d, 200004
d:
	.zero	200004
	.global	max
	.align	2
	.type	max, %object
	.size	max, 4
max:
	.zero	4
	.global	min
	.data
	.align	2
	.type	min, %object
	.size	min, 4
min:
	.word	50000
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d%d"
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
.L5:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x4, x0, x1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x0, x0, x1
	add	x2, x0, 4
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x0, x0, x1
	add	x0, x0, 8
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	add	w2, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L3
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
.L3:
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	bl	bellman_ford
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
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
	.align	2
	.global	bellman_ford
	.type	bellman_ford, %function
bellman_ford:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L8
.L9:
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	mov	w2, 31073
	movk	w2, 0xfffe, lsl 16
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L9
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	str	wzr, [x0, x1, lsl 2]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L10
.L23:
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L11
.L14:
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L25
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w3, [x0, x1, lsl 2]
	adrp	x0, f
	add	x4, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0, 8]
	add	w0, w3, w0
	cmp	w2, w0
	bge	.L13
	mov	w0, 1
	str	w0, [sp, 20]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w3, [x0, x1, lsl 2]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 8]
	adrp	x0, f
	add	x4, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w1, [x0, 4]
	add	w2, w3, w2
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L13
.L25:
	nop
.L13:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L11:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L14
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L15
.L17:
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L16
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L16
	ldr	w0, [sp, 24]
	add	w3, w0, 1
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 20]
.L16:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L15:
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L17
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L18
.L20:
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L19
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L19
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	sub	w1, w1, #1
	sub	w2, w0, #1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 20]
.L19:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L18:
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bgt	.L20
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L26
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L10:
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L23
	b	.L22
.L26:
	nop
.L22:
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	bellman_ford, .-bellman_ford
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
