	.arch armv8-a
	.file	"1017.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"%d%d%d%d%d%d"
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
.L11:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 24]
	mov	w0, -11
	mul	w1, w1, w0
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	neg	w0, w0
	ldr	w1, [sp, 36]
	add	w0, w0, w1
	str	w0, [sp, 36]
	ldr	w0, [sp, 32]
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w0, 3
	bne	.L4
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w0, #5
	str	w0, [sp, 40]
	b	.L3
.L4:
	ldr	w0, [sp, 32]
	cmp	w0, 2
	bne	.L5
	ldr	w0, [sp, 36]
	sub	w0, w0, #3
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w0, #6
	str	w0, [sp, 40]
	b	.L3
.L5:
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 36]
	sub	w0, w0, #5
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w0, #7
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L6
	ldr	w0, [sp, 36]
	mov	w1, 36409
	movk	w1, 0x38e3, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 1
	asr	w0, w0, 31
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w2, [sp, 36]
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
	str	w1, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	sub	w0, w0, #9
	str	w0, [sp, 36]
.L6:
	ldr	w0, [sp, 36]
	lsl	w1, w0, 2
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	ble	.L7
	ldr	w0, [sp, 40]
	mov	w1, 36409
	movk	w1, 0x38e3, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 3
	asr	w0, w0, 31
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w2, [sp, 40]
	mov	w0, 36409
	movk	w0, 0x38e3, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 3
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	lsl	w0, w0, 2
	sub	w1, w2, w0
	str	w1, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w1, [sp, 44]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x5, sp, 20
	add	x4, sp, 24
	add	x3, sp, 28
	add	x2, sp, 32
	add	x1, sp, 36
	add	x0, sp, 40
	mov	x6, x5
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L9
.L8:
	mov	w0, 1
	b	.L10
.L9:
	mov	w0, 0
.L10:
	cmp	w0, 0
	bne	.L11
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
