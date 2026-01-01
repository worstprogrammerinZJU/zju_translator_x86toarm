	.arch armv8-a
	.file	"3191.c"
	.text
	.global	i
	.bss
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.zero	4
	.global	str
	.align	3
	.type	str, %object
	.size	str, 50
str:
	.zero	50
	.text
	.align	2
	.global	mod
	.type	mod, %function
mod:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bge	.L2
	ldr	w0, [sp, 12]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmn	w0, #1
	bne	.L2
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, i
	add	x1, x1, :lo12:i
	str	w2, [x1]
	adrp	x1, str
	add	x1, x1, :lo12:str
	sxtw	x0, w0
	mov	w2, 49
	strb	w2, [x1, x0]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
	b	.L3
.L2:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, i
	add	x1, x1, :lo12:i
	str	w2, [x1]
	adrp	x1, str
	add	x1, x1, :lo12:str
	sxtw	x0, w0
	mov	w2, 48
	strb	w2, [x1, x0]
	b	.L5
.L4:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, i
	add	x1, x1, :lo12:i
	str	w2, [x1]
	adrp	x1, str
	add	x1, x1, :lo12:str
	sxtw	x0, w0
	mov	w2, 49
	strb	w2, [x1, x0]
.L5:
	ldr	w0, [sp, 12]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	mod, .-mod
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	wzr, [x0]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L7:
	ldr	w0, [sp, 28]
	bl	mod
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L7
	b	.L8
.L9:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, i
	add	x0, x0, :lo12:i
	str	w1, [x0]
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	bl	putchar
.L8:
	adrp	x0, i
	add	x0, x0, :lo12:i
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L9
	mov	w0, 10
	bl	putchar
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
