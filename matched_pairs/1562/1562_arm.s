	.arch armv8-a
	.file	"1562.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	m
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.global	t
	.align	3
	.type	t, %object
	.size	t, 10000
t:
	.zero	10000
	.text
	.align	2
	.global	dfs
	.type	dfs, %function
dfs:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 42
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L3
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L3
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
.L3:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	dfs
.L4:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L2
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
.L2:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L5
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dfs
.L5:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dfs
.L6:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L8
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L8
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
.L8:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L9
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	dfs
.L9:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L10
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
.L10:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	dfs, .-dfs
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%d\n"
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
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L12
.L20:
	str	wzr, [sp, 20]
	str	wzr, [sp, 28]
	b	.L13
.L14:
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, t
	add	x1, x1, :lo12:t
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 28]
	b	.L15
.L19:
	str	wzr, [sp, 24]
	b	.L16
.L18:
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L17
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	dfs
.L17:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L16:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L15:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L19
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L20
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L20
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
