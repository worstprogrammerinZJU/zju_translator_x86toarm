	.arch armv8-a
	.file	"3062.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	mov	x12, 10016
	sub	sp, sp, x12
	.cfi_def_cfa_offset 10016
	stp	x29, x30, [sp]
	.cfi_offset 29, -10016
	.cfi_offset 30, -10008
	mov	x29, sp
	b	.L2
.L3:
	add	x0, sp, 16
	bl	puts
.L2:
	add	x0, sp, 16
	bl	gets
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 10016
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
