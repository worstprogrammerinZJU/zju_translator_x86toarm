	.arch armv8-a
	.file	"3092.c"
	.text
	.global	power2
	.bss
	.align	2
	.type	power2, %object
	.size	power2, 4
power2:
	.zero	4
	.global	power3
	.align	2
	.type	power3, %object
	.size	power3, 4
power3:
	.zero	4
	.text
	.align	2
	.global	mod
	.type	mod, %function
mod:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	mov	w1, 1
	str	w1, [x0]
	b	.L2
.L3:
	ldr	w0, [sp, 12]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 12]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	mod, .-mod
	.align	2
	.global	term
	.type	term, %function
term:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	mov	w1, 1
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L6
.L7:
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L6:
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w1, [x0]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bcs	.L7
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w1, [x0]
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 1
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	term, .-term
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%u"
	.align	3
.LC2:
	.string	"%d %d"
	.align	3
.LC3:
	.string	" [%d,%d]"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #848
	.cfi_def_cfa_offset 848
	stp	x29, x30, [sp]
	.cfi_offset 29, -848
	.cfi_offset 30, -840
	mov	x29, sp
	add	x0, sp, 832
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 844]
	b	.L10
.L15:
	add	x0, sp, 828
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 840]
	b	.L11
.L12:
	ldr	w0, [sp, 828]
	bl	mod
	mov	w2, w0
	ldrsw	x0, [sp, 840]
	lsl	x0, x0, 2
	add	x1, sp, 424
	str	w2, [x1, x0]
	ldr	w0, [sp, 828]
	bl	term
	mov	w2, w0
	ldrsw	x0, [sp, 840]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 840]
	add	w0, w0, 1
	str	w0, [sp, 840]
	ldr	w1, [sp, 828]
	adrp	x0, power2
	add	x0, x0, :lo12:power2
	ldr	w2, [x0]
	adrp	x0, power3
	add	x0, x0, :lo12:power3
	ldr	w0, [x0]
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 828]
.L11:
	ldr	w0, [sp, 828]
	cmp	w0, 0
	bne	.L12
	ldr	w2, [sp, 840]
	ldr	w1, [sp, 844]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 836]
	b	.L13
.L14:
	ldrsw	x0, [sp, 836]
	lsl	x0, x0, 2
	add	x1, sp, 424
	ldr	w3, [x1, x0]
	ldrsw	x0, [sp, 836]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 836]
	add	w0, w0, 1
	str	w0, [sp, 836]
.L13:
	ldr	w1, [sp, 836]
	ldr	w0, [sp, 840]
	cmp	w1, w0
	blt	.L14
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 844]
	add	w0, w0, 1
	str	w0, [sp, 844]
.L10:
	ldr	w0, [sp, 832]
	ldr	w1, [sp, 844]
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 848
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
