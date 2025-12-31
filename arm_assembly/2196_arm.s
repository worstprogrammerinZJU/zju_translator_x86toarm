	.arch armv8-a
	.file	"2196.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 2992
	str	w0, [sp, 28]
	b	.L2
.L11:
	str	wzr, [sp, 20]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L3
.L4:
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 16]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L5
.L6:
	ldr	w2, [sp, 24]
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	lsl	w0, w0, 2
	sub	w1, w2, w0
	ldr	w0, [sp, 16]
	add	w0, w0, w1
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	mov	w1, 43691
	movk	w1, 0x2aaa, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 1
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L5:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L13
	str	wzr, [sp, 16]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	b	.L9
.L10:
	ldr	w0, [sp, 24]
	negs	w1, w0
	and	w0, w0, 15
	and	w1, w1, 15
	csneg	w0, w0, w1, mi
	ldr	w1, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	add	w1, w0, 15
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 4
	str	w0, [sp, 24]
.L9:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L10
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L8
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L8
.L13:
	nop
.L8:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	mov	w0, 9999
	cmp	w1, w0
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
