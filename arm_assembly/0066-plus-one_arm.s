	.arch armv8-a
	.file	"0066-plus-one.c"
	.text
	.align	2
	.global	plusOne
	.type	plusOne, %function
plusOne:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 64]
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 36]
	str	w0, [sp, 72]
	b	.L2
.L3:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w1, [sp, 60]
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
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	str	w0, [sp, 72]
.L2:
	ldr	w0, [sp, 72]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L4
	ldr	x0, [sp, 64]
	b	.L5
.L4:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	x0, [sp, 64]
	add	x0, x0, 4
.L5:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	plusOne, .-plusOne
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
