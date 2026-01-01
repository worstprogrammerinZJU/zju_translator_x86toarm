	.arch armv8-a
	.file	"1088.c"
	.text
	.global	r
	.bss
	.align	2
	.type	r, %object
	.size	r, 4
r:
	.zero	4
	.global	c
	.align	2
	.type	c, %object
	.size	c, 4
c:
	.zero	4
	.global	p
	.align	3
	.type	p, %object
	.size	p, 40000
p:
	.zero	40000
	.global	q
	.align	3
	.type	q, %object
	.size	q, 40000
q:
	.zero	40000
	.text
	.align	2
	.global	dp
	.type	dp, %function
dp:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	w0, -1
	str	w0, [sp, 44]
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	dp
.L5:
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
.L4:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	dp
.L7:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
.L6:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, p
	add	x2, x0, :lo12:p
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dp
.L9:
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
.L8:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, p
	add	x2, x0, :lo12:p
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dp
.L11:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 44]
	add	w3, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	b	.L1
.L12:
	nop
.L1:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	dp, .-dp
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%d"
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
	str	wzr, [sp, 20]
	adrp	x0, c
	add	x2, x0, :lo12:c
	adrp	x0, r
	add	x1, x0, :lo12:r
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L14
.L17:
	str	wzr, [sp, 24]
	b	.L15
.L16:
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L15:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L14:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L17
	str	wzr, [sp, 28]
	b	.L18
.L22:
	str	wzr, [sp, 24]
	b	.L19
.L21:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	dp
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L20
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 20]
.L20:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L19:
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L18:
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 20]
	add	w0, w0, 1
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
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
