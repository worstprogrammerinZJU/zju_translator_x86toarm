	.arch armv8-a
	.file	"2492.c"
	.text
	.global	p
	.bss
	.align	3
	.type	p, %object
	.size	p, 8004
p:
	.zero	8004
	.global	s
	.align	3
	.type	s, %object
	.size	s, 8004
s:
	.zero	8004
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"Scenario #%d:\n"
	.align	3
.LC3:
	.string	"No suspicious bugs found!\n"
	.align	3
.LC4:
	.string	"Suspicious bugs found!\n"
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
	str	wzr, [sp, 48]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L2
.L14:
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 60]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L3
.L4:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 52]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 52]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L3:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bgt	.L4
	str	wzr, [sp, 52]
	b	.L5
.L11:
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 60]
.L7:
	ldr	w1, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L8
	ldr	w1, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	bl	merge
	b	.L9
.L8:
	ldr	w1, [sp, 28]
	ldr	w2, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w1, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L10
	ldr	w1, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	merge
	b	.L6
.L10:
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
.L6:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L5:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 48]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L13
.L12:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L13:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L2:
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	root
	.type	root, %function
root:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L17
.L18:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
.L17:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L18
	b	.L19
.L20:
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L19:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L20
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	root, .-root
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB2:
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
	beq	.L26
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L25
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L22
.L25:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L22
.L26:
	nop
.L22:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
