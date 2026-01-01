	.arch armv8-a
	.file	"3069.c"
	.text
	.global	position
	.bss
	.align	3
	.type	position, %object
	.size	position, 4000
position:
	.zero	4000
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L3
.L4:
	mov	w0, 0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
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
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
.L19:
	str	wzr, [sp, 44]
	b	.L7
.L8:
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, position
	add	x0, x0, :lo12:position
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 32]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, position
	add	x0, x0, :lo12:position
	bl	qsort
	str	wzr, [sp, 36]
	str	wzr, [sp, 44]
	b	.L9
.L18:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L10
.L13:
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L21
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L10:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L13
	b	.L12
.L21:
	nop
.L12:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L14
.L17:
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L22
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L14:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L17
	b	.L16
.L22:
	nop
.L16:
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
.L9:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L18
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L6:
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L19
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
