	.arch armv8-a
	.file	"2661.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 140]
	adrp	x0, .LC2
	ldr	d0, [x0, #:lo12:.LC2]
	str	d0, [sp, 112]
	ldr	d1, [sp, 112]
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	str	d0, [sp, 128]
	str	xzr, [sp, 120]
	str	wzr, [sp, 20]
	b	.L2
.L4:
	ldr	w0, [sp, 140]
	add	w1, w0, 1
	str	w1, [sp, 140]
	scvtf	d0, w0
	bl	log
	fmov	d1, d0
	ldr	d0, [sp, 120]
	fadd	d0, d0, d1
	str	d0, [sp, 120]
.L3:
	ldr	d1, [sp, 120]
	ldr	d0, [sp, 128]
	fcmpe	d1, d0
	bmi	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 140]
	sub	w2, w0, #2
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	d0, [sp, 128]
	fadd	d0, d0, d0
	str	d0, [sp, 128]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w0, [sp, 20]
	cmp	w0, 21
	ble	.L3
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
.L7:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1960
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L6:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.word	-17155601
	.word	1072049730
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
