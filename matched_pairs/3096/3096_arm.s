	.arch armv8-a
	.file	"3096.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 100
str:
	.zero	100
	.section	.rodata
	.align	3
.LC0:
	.string	"%s is NOT surprising.\n"
	.align	3
.LC1:
	.string	"%s is surprising.\n"
	.align	3
.LC2:
	.string	"*"
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
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L2
.L17:
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	b	.L3
.L14:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L4
.L11:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 44]
	ldrb	w1, [x1, x0]
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L6
.L9:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 36]
	ldrb	w1, [x1, x0]
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 28]
	add	w3, w2, w0
	adrp	x0, str
	add	x2, x0, :lo12:str
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	beq	.L19
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L6:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bgt	.L9
	b	.L8
.L19:
	nop
.L8:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bgt	.L20
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L4:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L11
	b	.L10
.L20:
	nop
.L10:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L14
	b	.L13
.L21:
	nop
.L13:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L15
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L16
.L15:
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L16:
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
.L2:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L17
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
