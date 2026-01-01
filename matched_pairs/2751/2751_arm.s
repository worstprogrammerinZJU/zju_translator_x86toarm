	.arch armv8-a
	.file	"2751.c"
	.text
	.global	set
	.bss
	.align	3
	.type	set, %object
	.size	set, 160000
set:
	.zero	160000
	.global	p
	.align	2
	.type	p, %object
	.size	p, 4
p:
	.zero	4
	.global	q
	.align	2
	.type	q, %object
	.size	q, 4
q:
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
	b	.L2
.L13:
	str	wzr, [sp, 28]
	adrp	x0, p
	add	x0, x0, :lo12:p
	str	wzr, [x0]
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	b	.L3
.L6:
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L4
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w3, [x0]
	ldr	w1, [sp, 24]
	adrp	x0, set
	add	x2, x0, :lo12:set
	sxtw	x0, w3
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w3, [x0]
	ldr	w1, [sp, 20]
	adrp	x0, set
	add	x2, x0, :lo12:set
	sxtw	x0, w3
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0, 4]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, p
	add	x0, x0, :lo12:p
	str	w1, [x0]
	b	.L5
.L4:
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w3, [x0]
	ldr	w1, [sp, 24]
	adrp	x0, set
	add	x2, x0, :lo12:set
	sxtw	x3, w3
	mov	x0, 10000
	add	x0, x3, x0
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w3, [x0]
	ldr	w1, [sp, 20]
	adrp	x0, set
	add	x2, x0, :lo12:set
	sxtw	x0, w3
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	x0, x0, 65536
	str	w1, [x0, 14468]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w2, 0
	mov	w1, w0
	mov	w0, 0
	bl	quick
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w2, 1
	mov	w1, w0
	mov	w0, 0
	bl	quick
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L7
.L9:
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
.L8:
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L7:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L9
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L10
.L12:
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x2, [sp, 28]
	mov	x0, 10000
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L11
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
.L11:
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	x0, x0, 65536
	ldr	w1, [x0, 14468]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L10:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L12
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L13
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
	.global	quick
	.type	quick, %function
quick:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L24
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L18:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, set
	add	x0, x0, :lo12:set
	ldrsw	x1, [sp, 20]
	ldrsw	x4, [sp, 20]
	ldrsw	x2, [sp, 28]
	mov	x3, 10000
	mul	x3, x4, x3
	add	x2, x3, x2
	lsl	x2, x2, 1
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, set
	add	x0, x0, :lo12:set
	ldrsw	x2, [sp, 20]
	ldrsw	x5, [sp, 20]
	ldrsw	x3, [sp, 44]
	mov	x4, 10000
	mul	x4, x5, x4
	add	x3, x4, x3
	lsl	x3, x3, 1
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L20
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L18
.L20:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	adrp	x0, set
	add	x0, x0, :lo12:set
	ldrsw	x1, [sp, 20]
	ldrsw	x4, [sp, 20]
	ldrsw	x2, [sp, 28]
	mov	x3, 10000
	mul	x3, x4, x3
	add	x2, x3, x2
	lsl	x2, x2, 1
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, set
	add	x0, x0, :lo12:set
	ldrsw	x2, [sp, 20]
	ldrsw	x5, [sp, 20]
	ldrsw	x3, [sp, 40]
	mov	x4, 10000
	mul	x4, x5, x4
	add	x3, x4, x3
	lsl	x3, x3, 1
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L19
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L20
.L19:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L25
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	swap
	b	.L18
.L25:
	nop
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	bl	swap
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	ldr	w2, [sp, 20]
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	quick
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 24]
	bl	quick
.L24:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	quick, .-quick
	.align	2
	.global	swap
	.type	swap, %function
swap:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 12]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 8]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0]
	adrp	x0, set
	add	x2, x0, :lo12:set
	ldrsw	x0, [sp, 12]
	ldrsw	x4, [sp, 4]
	mov	x3, 10000
	mul	x3, x4, x3
	add	x0, x3, x0
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 8]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 12]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 28]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 8]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	adrp	x0, set
	add	x2, x0, :lo12:set
	ldrsw	x0, [sp, 12]
	ldrsw	x4, [sp, 4]
	mov	x3, 10000
	mul	x3, x4, x3
	add	x0, x3, x0
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	w1, [x0, 4]
	adrp	x0, set
	add	x1, x0, :lo12:set
	ldrsw	x0, [sp, 8]
	ldrsw	x3, [sp, 4]
	mov	x2, 10000
	mul	x2, x3, x2
	add	x0, x2, x0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0, 4]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	swap, .-swap
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
