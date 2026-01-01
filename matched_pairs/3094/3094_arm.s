	.arch armv8-a
	.file	"3094.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 300
str:
	.zero	300
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.align	3
.LC1:
	.string	"#"
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
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L2
.L6:
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L3
.L5:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L4
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L4
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	sub	w0, w0, #64
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
.L2:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L6
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
