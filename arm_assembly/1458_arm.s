	.arch armv8-a
	.file	"1458.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 201
s:
	.zero	201
	.global	t
	.align	3
	.type	t, %object
	.size	t, 201
t:
	.zero	201
	.global	c
	.align	3
	.type	c, %object
	.size	c, 161604
c:
	.zero	161604
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
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
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	b	.L2
.L3:
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	strlen
	mov	w19, w0
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	strlen
	mov	w1, w0
	mov	w0, w19
	bl	LCS
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
.L2:
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	LCS
	.type	LCS, %function
LCS:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	x2, 30532
	movk	x2, 0x2, lsl 16
	mov	w1, 0
	adrp	x0, c
	add	x0, x0, :lo12:c
	bl	memset
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L6
.L11:
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L7
.L10:
	ldr	w0, [sp, 44]
	sub	w2, w0, #1
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w2
	ldrb	w1, [x1, x0]
	ldr	w0, [sp, 40]
	sub	w3, w0, #1
	adrp	x0, t
	add	x2, x0, :lo12:t
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 44]
	sub	w2, w0, #1
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 201
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	b	.L9
.L8:
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	ldrsw	x3, [sp, 44]
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	sub	w3, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x2, [sp, 40]
	sxtw	x4, w3
	mov	x3, 201
	mul	x3, x4, x3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldrsw	x4, [sp, 44]
	mov	x3, 201
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L11
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 24]
	ldrsw	x3, [sp, 28]
	mov	x2, 201
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	LCS, .-LCS
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
