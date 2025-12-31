	.arch armv8-a
	.file	"1159.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 5001
str:
	.zero	5001
	.global	ing
	.align	3
	.type	ing, %object
	.size	ing, 5001
ing:
	.zero	5001
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	c
	.align	3
	.type	c, %object
	.size	c, 50020002
c:
	.zero	50020002
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L2
.L3:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 44]
	ldrb	w2, [x1, x0]
	adrp	x0, ing
	add	x1, x0, :lo12:ing
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, ing
	add	x1, x0, :lo12:ing
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w19, [x0]
	bl	LCS
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	LCS
	.type	LCS, %function
LCS:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, 1
	str	w0, [sp, 12]
	b	.L6
.L11:
	mov	w0, 1
	str	w0, [sp, 8]
	b	.L7
.L10:
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 8]
	sub	w3, w0, #1
	adrp	x0, ing
	add	x2, x0, :lo12:ing
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	and	w0, w0, 65535
	add	w0, w0, 1
	and	w0, w0, 65535
	sxth	w4, w0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	mov	w2, w4
	strh	w2, [x0, x1, lsl 1]
	b	.L9
.L8:
	ldr	w0, [sp, 8]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	ldr	w1, [sp, 12]
	sub	w3, w1, #1
	adrp	x1, c
	add	x1, x1, :lo12:c
	ldrsw	x2, [sp, 8]
	sxtw	x4, w3
	mov	x3, 5001
	mul	x3, x4, x3
	add	x2, x3, x2
	ldrsh	w1, [x1, x2, lsl 1]
	mov	w2, w1
	sxth	w1, w2
	cmp	w1, w0
	csel	w0, w2, w0, gt
	sxth	w4, w0
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldrsw	x3, [sp, 12]
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	mov	w2, w4
	strh	w2, [x0, x1, lsl 1]
.L9:
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L6:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	ble	.L11
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 5001
	mul	x2, x3, x2
	add	x1, x2, x1
	ldrsh	w0, [x0, x1, lsl 1]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	LCS, .-LCS
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
