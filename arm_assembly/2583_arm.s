	.arch armv8-a
	.file	"2583.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d %d %d\n"
	.align	3
.LC1:
	.string	"%d%d%d"
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
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w2, w0, w1
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w1, w0, w1
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w3, [sp, 36]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
