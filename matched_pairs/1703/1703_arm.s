	.arch armv8-a
	.file	"1703.c"
	.text
	.global	num
	.bss
	.align	3
	.type	num, %object
	.size	num, 800008
num:
	.zero	800008
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	N
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.zero	4
	.text
	.align	2
	.global	diff
	.type	diff, %function
diff:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	adrp	x1, N
	add	x1, x1, :lo12:N
	ldr	w1, [x1]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	diff, .-diff
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
	b	.L4
.L5:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
.L4:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L5
	b	.L6
.L7:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 12]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	str	w0, [sp, 12]
.L6:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	root, .-root
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d%d"
	.align	3
.LC2:
	.string	"%c%d%d"
	.align	3
.LC3:
	.string	"Not sure yet."
	.align	3
.LC4:
	.string	"In the same gang."
	.align	3
.LC5:
	.string	"In different gangs."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L10
.L19:
	add	x0, sp, 40
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, N
	add	x0, x0, :lo12:N
	str	w1, [x0]
	str	wzr, [sp, 60]
	b	.L11
.L12:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 60]
	ldr	w2, [sp, 60]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L11:
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 60]
	b	.L13
.L18:
	bl	getchar
	add	x2, sp, 44
	add	x1, sp, 48
	add	x0, sp, 35
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldrb	w0, [sp, 35]
	cmp	w0, 65
	bne	.L14
	ldr	w0, [sp, 48]
	bl	root
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 52]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 56]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w2, w0, w1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	ldr	w0, [sp, 52]
	sdiv	w3, w0, w1
	mul	w1, w3, w1
	sub	w0, w0, w1
	cmp	w2, w0
	beq	.L15
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L16
.L15:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L17
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
	b	.L16
.L17:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
	b	.L16
.L14:
	ldr	w0, [sp, 48]
	bl	diff
	bl	root
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 52]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 56]
	ldr	w2, [sp, 52]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 56]
	bl	diff
	mov	w19, w0
	ldr	w0, [sp, 52]
	bl	diff
	mov	w2, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L16:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L13:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L18
.L10:
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
