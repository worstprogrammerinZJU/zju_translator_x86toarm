	.arch armv8-a
	.file	"3036.c"
	.text
	.global	flag1
	.bss
	.align	3
	.type	flag1, %object
	.size	flag1, 2500
flag1:
	.zero	2500
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	flag2
	.align	3
	.type	flag2, %object
	.size	flag2, 2500
flag2:
	.zero	2500
	.text
	.align	2
	.global	sign
	.type	sign, %function
sign:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	ldr	w0, [sp, 8]
	sub	w3, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	sub	w5, w1, #1
	ldr	w1, [sp, 8]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x4, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 8]
	sub	w1, w1, #1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	add	w1, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 8]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x4, [sp, 8]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	ldr	w0, [sp, 8]
	add	w3, w0, 1
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x3, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	ldr	w1, [sp, 12]
	add	w5, w1, 1
	ldr	w1, [sp, 8]
	add	w1, w1, 1
	add	w3, w2, w0
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	sxtw	x4, w1
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sign, .-sign
	.align	2
	.global	copy
	.type	copy, %function
copy:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, 12]
	b	.L3
.L6:
	str	wzr, [sp, 8]
	b	.L4
.L5:
	adrp	x0, flag1
	add	x2, x0, :lo12:flag1
	ldrsw	x3, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w3, [x2, x0, lsl 2]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	ldrsw	x4, [sp, 8]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L4:
	ldr	w0, [sp, 8]
	cmp	w0, 24
	ble	.L5
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L3:
	ldr	w0, [sp, 12]
	cmp	w0, 24
	ble	.L6
	nop
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	copy, .-copy
	.align	2
	.global	search
	.type	search, %function
search:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L8
.L12:
	str	wzr, [sp, 24]
	b	.L9
.L11:
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	beq	.L10
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	sign
.L10:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L9:
	ldr	w0, [sp, 24]
	cmp	w0, 24
	ble	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	ldr	w0, [sp, 28]
	cmp	w0, 24
	ble	.L12
	bl	copy
	mov	x2, 2500
	mov	w1, 0
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	bl	memset
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	search, .-search
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	solve
	.type	solve, %function
solve:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w3, [x0]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	sign
	bl	copy
	mov	x2, 2500
	mov	w1, 0
	adrp	x0, flag1
	add	x0, x0, :lo12:flag1
	bl	memset
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L14
.L15:
	bl	search
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L14:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L15
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w3, [x0]
	adrp	x0, flag2
	add	x2, x0, :lo12:flag2
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	solve, .-solve
	.section	.rodata
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L17
.L18:
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	bl	solve
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
