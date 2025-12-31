	.arch armv8-a
	.file	"1666.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	candy
	.align	3
	.type	candy, %object
	.size	candy, 2000
candy:
	.zero	2000
	.text
	.align	2
	.global	round
	.type	round, %function
round:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	asr	w0, w0, 1
	str	w0, [sp, 8]
	str	wzr, [sp, 12]
	b	.L2
.L4:
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	asr	w0, w0, 1
	str	w0, [sp, 4]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 8]
	add	w2, w1, w0
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
.L3:
	ldr	w0, [sp, 4]
	str	w0, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L4
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldr	w0, [x0]
	str	w0, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 12]
	b	.L5
.L8:
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	beq	.L6
	mov	w0, 0
	b	.L7
.L6:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L5:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L8
	mov	w0, 1
.L7:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	round, .-round
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d %d\n"
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
	b	.L10
.L15:
	str	wzr, [sp, 28]
	b	.L11
.L12:
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L11:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L13
.L14:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	bl	round
	cmp	w0, 0
	beq	.L14
	adrp	x0, candy
	add	x0, x0, :lo12:candy
	ldr	w0, [x0]
	mov	w2, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L10:
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L15
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
