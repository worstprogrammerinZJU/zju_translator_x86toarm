	.arch armv8-a
	.file	"3141.c"
	.text
	.align	2
	.global	Yang
	.type	Yang, %function
Yang:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sdiv	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 40]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w0, 1
	b	.L3
.L2:
	ldr	w0, [sp, 56]
	add	w19, w0, 1
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 60]
	bl	Yang
	mul	w0, w19, w0
.L3:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Yang, .-Yang
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"Case %d: %s\n"
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
	mov	w0, 1
	str	w0, [sp, 44]
	add	x1, sp, 36
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L5
.L6:
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	bl	Yang
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 35757
	movk	w1, 0x68db, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 12
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 10000
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 19923
	movk	w1, 0x1062, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 6
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 24]
	ldr	w0, [sp, 40]
	mov	w1, 19923
	movk	w1, 0x1062, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 6
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 1000
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 5
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 25]
	ldr	w0, [sp, 40]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 5
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, 100
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 26]
	ldr	w1, [sp, 40]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 2
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 2
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w0, w0, 255
	strb	w0, [sp, 27]
	strb	wzr, [sp, 28]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	add	x1, sp, 24
	mov	x2, x1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 36
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L5:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L6
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
