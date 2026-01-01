	.arch armv8-a
	.file	"2418.c"
	.text
	.global	link
	.bss
	.align	3
	.type	link, %object
	.size	link, 80056
link:
	.zero	80056
	.global	num
	.align	3
	.type	num, %object
	.size	num, 40000
num:
	.zero	40000
	.global	posi
	.align	3
	.type	posi, %object
	.size	posi, 40000
posi:
	.zero	40000
	.global	n
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
	.global	tree
	.align	3
	.type	tree, %object
	.size	tree, 310000
tree:
	.zero	310000
	.section	.rodata
	.align	3
.LC0:
	.string	"%s %.4lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	b	.L2
.L9:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 28]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 32]
	b	.L3
.L6:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32]
.L3:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L6
	b	.L5
.L13:
	nop
.L5:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L7
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 32]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	x0, [sp, 32]
	str	w1, [x0]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	str	x1, [x0, 8]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 28]
	ldr	x2, [sp, 32]
	str	x2, [x0, x1, lsl 3]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	b	.L8
.L7:
	ldr	x0, [sp, 32]
	ldr	w3, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
.L8:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	bl	gets
	cmp	w0, 0
	bne	.L9
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	bl	qsort
	str	wzr, [sp, 44]
	b	.L10
.L11:
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	mov	x1, x2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.global	ELFhash
	.type	ELFhash, %function
ELFhash:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L15
.L17:
	ldr	x0, [sp, 24]
	lsl	x1, x0, 4
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4026531840
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [sp, 16]
	lsr	x0, x0, 24
	ldr	x1, [sp, 24]
	eor	x0, x1, x0
	str	x0, [sp, 24]
.L16:
	ldr	x0, [sp, 16]
	mvn	x0, x0
	ldr	x1, [sp, 24]
	and	x0, x1, x0
	str	x0, [sp, 24]
.L15:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L17
	ldr	x0, [sp, 24]
	mov	x1, 38987
	movk	x1, 0x5499, lsl 16
	movk	x1, 0x12b3, lsl 32
	movk	x1, 0xa323, lsl 48
	umulh	x1, x0, x1
	sub	x2, x0, x1
	lsr	x2, x2, 1
	add	x1, x1, x2
	lsr	x1, x1, 13
	mov	x2, 10007
	mul	x1, x1, x2
	sub	x1, x0, x1
	mov	w0, w1
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	ELFhash, .-ELFhash
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x2, x0, x1
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	adrp	x1, tree
	add	x1, x1, :lo12:tree
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	cmp, .-cmp
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
