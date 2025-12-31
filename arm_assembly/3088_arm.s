	.arch armv8-a
	.file	"3088.c"
	.text
	.global	jc
	.data
	.align	3
	.type	jc, %object
	.size	jc, 48
jc:
	.word	1
	.word	1
	.word	2
	.word	6
	.word	24
	.word	120
	.word	720
	.word	5040
	.word	40320
	.word	362880
	.word	3628800
	.word	39916800
	.global	g
	.align	3
	.type	g, %object
	.size	g, 48
g:
	.word	1
	.word	1
	.word	3
	.zero	36
	.global	f
	.bss
	.align	3
	.type	f, %object
	.size	f, 48
f:
	.zero	48
	.text
	.align	2
	.global	zuhe
	.type	zuhe, %function
zuhe:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	ldrsw	x1, [sp, 8]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	ldrsw	x2, [sp, 12]
	ldr	w0, [x0, x2, lsl 2]
	sdiv	w1, w1, w0
	ldr	w2, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w2, w2, w0
	adrp	x0, jc
	add	x0, x0, :lo12:jc
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	sdiv	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	zuhe, .-zuhe
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d %d %u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	w0, 3
	str	w0, [sp, 44]
	b	.L4
.L7:
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x1, [sp, 44]
	str	wzr, [x0, x1, lsl 2]
	str	wzr, [sp, 40]
	b	.L5
.L6:
	ldr	w1, [sp, 40]
	adrp	x0, g
	add	x0, x0, :lo12:g
	sxtw	x1, w1
	ldr	w19, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	bl	zuhe
	mul	w1, w19, w0
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, g
	add	x0, x0, :lo12:g
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L6
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 11
	ble	.L7
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L8
.L11:
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x1, [sp, 44]
	str	wzr, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L9
.L10:
	ldr	w1, [sp, 40]
	adrp	x0, g
	add	x0, x0, :lo12:g
	sxtw	x1, w1
	ldr	w19, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	bl	zuhe
	mul	w1, w19, w0
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L9:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	ldr	w0, [sp, 44]
	cmp	w0, 11
	ble	.L11
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L12
.L13:
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 40]
	adrp	x0, f
	add	x0, x0, :lo12:f
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w3, w0
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L12:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
