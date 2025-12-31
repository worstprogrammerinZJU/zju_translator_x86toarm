	.arch armv8-a
	.file	"1207.c"
	.text
	.align	2
	.global	pro
	.type	pro, %function
pro:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L5:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 12]
	asr	w0, w0, 1
	str	w0, [sp, 12]
	b	.L4
.L3:
	ldr	w1, [sp, 12]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 12]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	pro, .-pro
	.section	.rodata
	.align	3
.LC0:
	.string	"%d %d "
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC2:
	.string	"%d%d"
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
	b	.L8
.L13:
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	str	w0, [sp, 32]
.L9:
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L10
.L12:
	ldr	w0, [sp, 44]
	bl	pro
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
.L11:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L12
	ldr	w1, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L8:
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
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
