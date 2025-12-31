	.arch armv8-a
	.file	"1818.c"
	.text
	.global	k
	.bss
	.align	2
	.type	k, %object
	.size	k, 4
k:
	.zero	4
	.global	n
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	p
	.align	3
	.type	p, %object
	.size	p, 32768
p:
	.zero	32768
	.global	f
	.align	3
	.type	f, %object
	.size	f, 4097
f:
	.zero	4097
	.text
	.align	2
	.global	find
	.type	find, %function
find:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	lsl	w0, w0, 1
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 36]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldr	w1, [sp, 12]
	str	w1, [x0]
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 12]
	mov	w2, 1
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
.L11:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L3
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	b	.L4
.L3:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L6
.L8:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bgt	.L7
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	beq	.L8
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	b	.L10
.L9:
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 44]
	ldr	w2, [sp, 40]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, f
	add	x1, x0, :lo12:f
	ldrsw	x0, [sp, 40]
	mov	w2, 1
	strb	w2, [x1, x0]
.L4:
	mov	w1, 1
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
.L10:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	find, .-find
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%d\n"
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
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L13
.L16:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	bl	find
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 20]
	str	w0, [sp, 28]
	b	.L15
.L14:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L15:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x2, x0
	mov	w1, 0
	adrp	x0, f
	add	x0, x0, :lo12:f
	bl	memset
.L13:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bgt	.L16
	b	.L17
.L18:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	mov	x2, x0
	mov	w1, 0
	adrp	x0, f
	add	x0, x0, :lo12:f
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 28]
	bl	find
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
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
