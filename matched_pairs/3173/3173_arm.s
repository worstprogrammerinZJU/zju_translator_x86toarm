	.arch armv8-a
	.file	"3173.c"
	.text
	.align	2
	.global	make
	.type	make, %function
make:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w2, [sp, 12]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L2
	mov	w0, 9
	b	.L3
.L2:
	ldr	w2, [sp, 12]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 3
	add	w1, w1, w0
	sub	w0, w2, w1
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	make, .-make
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"  "
	.align	3
.LC2:
	.string	"%d"
	.align	3
.LC3:
	.string	" %d"
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
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L5
.L10:
	str	wzr, [sp, 40]
	b	.L6
.L7:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 28]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L8
.L9:
	ldr	w1, [sp, 36]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	add	w0, w0, 1
	bl	make
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L8:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
