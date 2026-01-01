	.arch armv8-a
	.file	"1006.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d %d %d %d"
	.align	3
.LC1:
	.string	"Case %d: the next triple peak occurs in %d days.\n"
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
	mov	w0, 1
	str	w0, [sp, 40]
.L5:
	add	x3, sp, 24
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	cmn	w0, #1
	bne	.L2
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L2
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L2
	ldr	w0, [sp, 24]
	cmn	w0, #1
	beq	.L8
.L2:
	ldr	w0, [sp, 36]
	mov	w1, 17097
	movk	w1, 0xb216, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 4
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 23
	mul	w1, w1, w2
	sub	w1, w0, w1
	mov	w0, 5544
	mul	w3, w1, w0
	ldr	w1, [sp, 32]
	mov	w0, 9363
	movk	w0, 0x9249, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	add	w0, w1, w0
	asr	w2, w0, 4
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 3
	sub	w0, w0, w2
	lsl	w0, w0, 2
	sub	w2, w1, w0
	mov	w0, 14421
	mul	w0, w2, w0
	add	w3, w3, w0
	ldr	w2, [sp, 28]
	mov	w0, 33761
	movk	w0, 0x3e0f, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 3
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 5
	add	w0, w0, w1
	sub	w1, w2, w0
	mov	w0, 1288
	mul	w0, w1, w0
	add	w1, w3, w0
	mov	w0, 4453
	movk	w0, 0x3157, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 12
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 21252
	mul	w0, w0, w2
	sub	w0, w1, w0
	ldr	w1, [sp, 24]
	sub	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L4
	ldr	w1, [sp, 44]
	mov	w0, 21252
	add	w0, w1, w0
	str	w0, [sp, 44]
.L4:
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L5
.L8:
	nop
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
