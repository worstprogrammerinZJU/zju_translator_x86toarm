	.arch armv8-a
	.file	"3049.c"
	.text
	.global	zuhe
	.bss
	.align	3
	.type	zuhe, %object
	.size	zuhe, 60
zuhe:
	.zero	60
	.global	letter
	.align	3
	.type	letter, %object
	.size	letter, 15
letter:
	.zero	15
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	k
	.align	2
	.type	k, %object
	.size	k, 4
k:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d\n"
	.align	3
.LC1:
	.string	"%c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, k
	add	x1, x0, :lo12:k
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldrsw	x1, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	bl	getchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	bl	qsort
	mov	w0, 0
	bl	make
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.global	equal
	.type	equal, %function
equal:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	b	.L6
.L9:
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	bgt	.L7
	mov	w0, 0
	b	.L8
.L7:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L6:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L9
	mov	w0, 1
.L8:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	equal, .-equal
	.align	2
	.global	make
	.type	make, %function
make:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L11
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	str	wzr, [sp, 44]
	b	.L12
.L16:
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 97
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 101
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L13
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 117
	bne	.L14
.L13:
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L15
.L14:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L15:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L12:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L24
	ldr	w0, [sp, 36]
	cmp	w0, 1
	ble	.L24
	str	wzr, [sp, 44]
	b	.L18
.L19:
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x1, x0, :lo12:letter
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L18:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L19
	mov	w0, 10
	bl	putchar
	b	.L24
.L11:
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	b	.L21
.L23:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	equal
	cmp	w0, 1
	bne	.L22
	ldr	w0, [sp, 44]
	add	w2, w0, 1
	adrp	x0, zuhe
	add	x0, x0, :lo12:zuhe
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	make
.L22:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L21:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L23
	b	.L10
.L24:
	nop
.L10:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	make, .-make
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	strb	w0, [sp, 30]
	ldrb	w1, [sp, 31]
	ldrb	w0, [sp, 30]
	cmp	w1, w0
	bcs	.L26
	mov	w0, -1
	b	.L27
.L26:
	ldrb	w1, [sp, 31]
	ldrb	w0, [sp, 30]
	cmp	w1, w0
	bls	.L28
	mov	w0, 1
	b	.L27
.L28:
	mov	w0, 0
.L27:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	cmp, .-cmp
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
