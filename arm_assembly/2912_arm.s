	.arch armv8-a
	.file	"2912.c"
	.text
	.global	Round
	.bss
	.align	3
	.type	Round, %object
	.size	Round, 24000
Round:
	.zero	24000
	.global	P
	.align	3
	.type	P, %object
	.size	P, 2004
P:
	.zero	2004
	.global	Q
	.align	3
	.type	Q, %object
	.size	Q, 2004
Q:
	.zero	2004
	.global	R
	.align	3
	.type	R, %object
	.size	R, 2004
R:
	.zero	2004
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
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%c%d"
	.align	3
.LC1:
	.string	"Can not determine"
	.align	3
.LC2:
	.string	"Impossible"
	.align	3
.LC3:
	.string	"Player %d can be determined to be the judge after %d lines\n"
	.align	3
.LC4:
	.string	"%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	b	.L2
.L16:
	str	wzr, [sp, 44]
	b	.L3
.L7:
	add	x2, sp, 28
	add	x1, sp, 27
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldrb	w0, [sp, 27]
	cmp	w0, 60
	bne	.L4
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	b	.L5
.L4:
	ldrb	w0, [sp, 27]
	cmp	w0, 62
	bne	.L6
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
	b	.L5
.L6:
	ldrb	w0, [sp, 27]
	cmp	w0, 61
	bne	.L5
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w2, [sp, 32]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	w2, [sp, 28]
	adrp	x0, Round
	add	x3, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 8]
.L5:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, -1
	str	w0, [sp, 36]
	b	.L8
.L13:
	ldr	w0, [sp, 44]
	bl	Rochambeau
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L9
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	b	.L11
.L9:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L11
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L13
	b	.L12
.L18:
	nop
.L12:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L14
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L2
.L14:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L2
.L15:
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w2, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L2:
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	Rochambeau
	.type	Rochambeau, %function
Rochambeau:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L20
.L21:
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L20:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L21
	str	wzr, [sp, 44]
	b	.L22
.L42:
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 40]
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	str	w0, [sp, 36]
	adrp	x0, Round
	add	x2, x0, :lo12:Round
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	beq	.L43
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	beq	.L43
	ldr	w0, [sp, 40]
	bl	root
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	bl	root
	str	w0, [sp, 36]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L26
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
.L26:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L27
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
.L27:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L28
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
.L28:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L29
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
.L29:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L30
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	beq	.L31
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L32
.L31:
	ldr	w0, [sp, 44]
	b	.L33
.L32:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	bl	merge
	b	.L25
.L30:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	beq	.L34
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L35
.L34:
	ldr	w0, [sp, 44]
	b	.L33
.L35:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L36
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w2, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	b	.L37
.L36:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 36]
	bl	merge
.L37:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L38
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w2, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	b	.L39
.L38:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 40]
	bl	merge
.L39:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L40
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L40
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	b	.L25
.L40:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L41
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	b	.L25
.L41:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L25
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L25
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	b	.L25
.L43:
	nop
.L25:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L22:
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L42
	mov	w0, -1
.L33:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	Rochambeau, .-Rochambeau
	.align	2
	.global	root
	.type	root, %function
root:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L45
.L46:
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
.L45:
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L46
	b	.L47
.L48:
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L47:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L48
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	root, .-root
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L51
	ldr	w0, [sp, 28]
	b	.L52
.L51:
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L53
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L54
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L54
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L55
.L54:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L55
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L55
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L55:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L56
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L56
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L57
.L56:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L57
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L57
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L57:
	ldr	w0, [sp, 28]
	b	.L52
.L53:
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L58
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L58
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L59
.L58:
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L59
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L59
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, Q
	add	x0, x0, :lo12:Q
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L59:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L60
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L60
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L61
.L60:
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L61
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L61
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, R
	add	x0, x0, :lo12:R
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L61:
	ldr	w0, [sp, 24]
.L52:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
