	.arch armv8-a
	.file	"1656.c"
	.text
	.global	p
	.bss
	.align	3
	.type	p, %object
	.size	p, 10000
p:
	.zero	10000
	.text
	.align	2
	.global	snuc
	.type	snuc, %function
snuc:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	w3, [sp]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L2
.L5:
	ldr	w0, [sp, 8]
	str	w0, [sp, 24]
	b	.L3
.L4:
	ldr	w0, [sp]
	and	w4, w0, 255
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 4]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 4]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	snuc, .-snuc
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	test
	.type	test, %function
test:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	b	.L7
.L11:
	ldr	w0, [sp, 24]
	str	w0, [sp, 40]
	b	.L8
.L10:
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L8:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 36]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	test, .-test
	.section	.rodata
	.align	3
.LC1:
	.string	"%s %d%d%d"
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
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L13
.L17:
	add	x3, sp, 28
	add	x2, sp, 32
	add	x1, sp, 36
	add	x0, sp, 16
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrb	w0, [sp, 16]
	cmp	w0, 87
	bne	.L14
	ldr	w0, [sp, 36]
	sub	w4, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	mov	w3, 0
	mov	w2, w1
	mov	w1, w0
	mov	w0, w4
	bl	snuc
	b	.L15
.L14:
	ldrb	w0, [sp, 16]
	cmp	w0, 66
	bne	.L16
	ldr	w0, [sp, 36]
	sub	w4, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	mov	w3, 1
	mov	w2, w1
	mov	w1, w0
	mov	w0, w4
	bl	snuc
	b	.L15
.L16:
	ldr	w0, [sp, 36]
	sub	w3, w0, #1
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	mov	w2, w1
	mov	w1, w0
	mov	w0, w3
	bl	test
.L15:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L13:
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
