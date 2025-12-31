	.arch armv8-a
	.file	"3090.c"
	.text
	.align	2
	.global	eulerphi
	.type	eulerphi, %function
eulerphi:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w0, [sp, 12]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
.L2:
	mov	w0, 3
	str	w0, [sp, 24]
	b	.L4
.L7:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 28]
.L6:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L6
.L5:
	ldr	w0, [sp, 24]
	add	w0, w0, 2
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bgt	.L7
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	eulerphi, .-eulerphi
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d %d %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #4048
	.cfi_def_cfa_offset 4048
	stp	x29, x30, [sp]
	.cfi_offset 29, -4048
	.cfi_offset 30, -4040
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -4032
	add	x0, sp, 32
	mov	x1, 4004
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L10
.L11:
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w19, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	bl	eulerphi
	mov	w1, w0
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	add	w2, w19, w1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	add	w0, w0, 3
	add	w2, w1, w0
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L10:
	ldr	w0, [sp, 4044]
	cmp	w0, 999
	ble	.L11
	ldr	w1, [sp, 4032]
	ldr	w0, [sp, 4032]
	add	w0, w0, 3
	add	w0, w1, w0
	str	w0, [sp, 4032]
	add	x0, sp, 4040
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L12
.L13:
	add	x0, sp, 4036
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w2, [sp, 4036]
	ldr	w0, [sp, 4036]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w3, w0
	ldr	w1, [sp, 4044]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
.L12:
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	ble	.L13
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
