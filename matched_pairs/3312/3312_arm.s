	.arch armv8-a
	.file	"3312.c"
	.text
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	k
	.align	2
	.type	k, %object
	.size	k, 4
k:
	.zero	4
	.global	len
	.align	3
	.type	len, %object
	.size	len, 4000
len:
	.zero	4000
	.text
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L3
.L4:
	mov	w0, 0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cmp, .-cmp
	.section	.rodata
	.align	3
.LC0:
	.string	"%s\n"
	.align	3
.LC1:
	.string	"Case %d: "
	.align	3
.LC2:
	.string	"no\n"
	.align	3
.LC3:
	.string	"yes\n"
	.align	3
.LC4:
	.string	"%d%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 236]
	b	.L6
.L22:
	str	wzr, [sp, 232]
	b	.L7
.L8:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	strlen
	mov	w2, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldrsw	x1, [sp, 232]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
.L7:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 232]
	cmp	w1, w0
	blt	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, len
	add	x0, x0, :lo12:len
	bl	qsort
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sdiv	w0, w1, w0
	str	w0, [sp, 220]
	ldr	w0, [sp, 236]
	add	w1, w0, 1
	str	w1, [sp, 236]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	str	wzr, [sp, 232]
	b	.L9
.L17:
	str	wzr, [sp, 228]
	str	wzr, [sp, 224]
	b	.L10
.L11:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	ldr	w0, [sp, 232]
	mul	w1, w1, w0
	ldr	w0, [sp, 228]
	add	w1, w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 224]
	add	w0, w1, w0
	str	w0, [sp, 224]
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
.L10:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L11
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 224]
	sdiv	w0, w1, w0
	str	w0, [sp, 224]
	str	wzr, [sp, 228]
	b	.L12
.L14:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	ldr	w0, [sp, 232]
	mul	w1, w1, w0
	ldr	w0, [sp, 228]
	add	w1, w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 224]
	add	w0, w0, 2
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 224]
	sub	w1, w0, #2
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w2, [x0]
	ldr	w0, [sp, 232]
	mul	w2, w2, w0
	ldr	w0, [sp, 228]
	add	w2, w2, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L13
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
.L12:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L14
.L13:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	blt	.L24
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
.L9:
	ldr	w1, [sp, 232]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	blt	.L17
	b	.L16
.L24:
	nop
.L16:
	ldr	w1, [sp, 232]
	ldr	w0, [sp, 220]
	cmp	w1, w0
	bge	.L18
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L6
.L18:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L6:
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L19
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L20
.L19:
	mov	w0, 1
	b	.L21
.L20:
	mov	w0, 0
.L21:
	cmp	w0, 0
	bne	.L22
	mov	w0, 0
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
