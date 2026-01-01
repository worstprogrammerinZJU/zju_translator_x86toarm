	.arch armv8-a
	.file	"0374-guess-number-higher-or-lower.c"
	.text
	.align	2
	.global	guess_bis
	.type	guess_bis, %function
guess_bis:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	guess
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 40]
	b	.L3
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bge	.L4
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	guess_bis
	b	.L3
.L4:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	bl	guess_bis
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	guess_bis, .-guess_bis
	.align	2
	.global	guessNumber
	.type	guessNumber, %function
guessNumber:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 0
	bl	guess_bis
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	guessNumber, .-guessNumber
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
