	.arch armv8-a
	.file	"3087.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	str
	.align	3
	.type	str, %object
	.size	str, 250
str:
	.zero	250
	.text
	.align	2
	.global	change
	.type	change, %function
change:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L2
.L3:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	sxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	sxtw	x0, w0
	ldr	x2, [sp]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L3
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	change, .-change
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%d %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #800
	.cfi_def_cfa_offset 800
	stp	x29, x30, [sp]
	.cfi_offset 29, -800
	.cfi_offset 30, -792
	mov	x29, sp
	add	x0, sp, 788
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 792]
	b	.L5
.L10:
	str	wzr, [sp, 796]
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 536
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, sp, 536
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 536
	mov	x1, x0
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcpy
	b	.L6
.L9:
	add	x1, sp, 280
	add	x0, sp, 536
	bl	change
	add	x1, sp, 280
	add	x0, sp, 536
	bl	strcpy
	add	x2, sp, 536
	adrp	x0, str
	add	x1, x0, :lo12:str
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, -1
	str	w0, [sp, 796]
	b	.L8
.L7:
	ldr	w0, [sp, 796]
	add	w0, w0, 1
	str	w0, [sp, 796]
.L6:
	add	x1, sp, 536
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	bne	.L9
.L8:
	ldr	w2, [sp, 796]
	ldr	w1, [sp, 792]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 792]
	add	w0, w0, 1
	str	w0, [sp, 792]
.L5:
	ldr	w0, [sp, 788]
	ldr	w1, [sp, 792]
	cmp	w1, w0
	ble	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 800
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
