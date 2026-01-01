	.arch armv8-a
	.file	"3095.c"
	.text
	.global	len
	.bss
	.align	2
	.type	len, %object
	.size	len, 4
len:
	.zero	4
	.global	str
	.align	3
	.type	str, %object
	.size	str, 100
str:
	.zero	100
	.text
	.align	2
	.global	left
	.type	left, %function
left:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L2
.L7:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L3
	mov	w0, 100
	b	.L4
.L3:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 92
	bne	.L6
.L5:
	mov	w0, 0
	b	.L4
.L6:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L7
	mov	w0, 100
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	left, .-left
	.align	2
	.global	right
	.type	right, %function
right:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L9
.L14:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L10
	mov	w0, 100
	b	.L11
.L10:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	beq	.L12
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 47
	bne	.L13
.L12:
	mov	w0, 0
	b	.L11
.L13:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L9:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	mov	w0, 100
.L11:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	right, .-right
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
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L16
.L23:
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	mov	w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L17
.L22:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L18
	ldr	w0, [sp, 44]
	add	w0, w0, 100
	str	w0, [sp, 44]
	b	.L19
.L18:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 47
	bne	.L20
	ldr	w0, [sp, 40]
	bl	left
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	b	.L19
.L20:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 92
	bne	.L21
	ldr	w0, [sp, 40]
	bl	right
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	b	.L19
.L21:
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	bne	.L19
	ldr	w0, [sp, 40]
	bl	left
	mov	w19, w0
	ldr	w0, [sp, 40]
	bl	right
	add	w0, w19, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
.L19:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L17:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L22
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	sdiv	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
.L16:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
