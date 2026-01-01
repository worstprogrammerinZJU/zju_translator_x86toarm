	.arch armv8-a
	.file	"1126.c"
	.text
	.global	str
	.bss
	.align	3
	.type	str, %object
	.size	str, 300
str:
	.zero	300
	.text
	.align	2
	.global	sentence
	.type	sentence, %function
sentence:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	bls	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	b	.L3
.L2:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	sentence
	b	.L3
.L4:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 67
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 68
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 73
	bne	.L6
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	sentence
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	blt	.L7
	ldr	w0, [sp, 44]
	bl	sentence
	b	.L3
.L7:
	mov	w0, -1
	b	.L3
.L6:
	mov	w0, -1
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sentence, .-sentence
	.section	.rodata
	.align	3
.LC0:
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.align	3
.LC2:
	.string	"%s"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L9
.L11:
	mov	w0, 0
	bl	sentence
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L10
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L9
.L10:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L9:
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
