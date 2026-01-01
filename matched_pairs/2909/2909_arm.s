	.arch armv8-a
	.file	"2909.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"1"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	mov	x12, 7056
	sub	sp, sp, x12
	.cfi_def_cfa_offset 7056
	stp	x29, x30, [sp]
	.cfi_offset 29, -7056
	.cfi_offset 30, -7048
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 7040]
	add	x0, sp, 16
	mov	x1, 7008
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 3
	strh	w0, [sp, 16]
	mov	w0, 5
	str	w0, [sp, 7052]
	b	.L2
.L8:
	str	wzr, [sp, 7048]
	b	.L3
.L6:
	ldrsw	x0, [sp, 7048]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7052]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L21
	ldr	w0, [sp, 7048]
	add	w0, w0, 1
	str	w0, [sp, 7048]
.L3:
	ldr	w1, [sp, 7048]
	ldr	w0, [sp, 7040]
	cmp	w1, w0
	blt	.L6
	b	.L5
.L21:
	nop
.L5:
	ldr	w1, [sp, 7048]
	ldr	w0, [sp, 7040]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 7040]
	add	w1, w0, 1
	str	w1, [sp, 7040]
	ldr	w1, [sp, 7052]
	sxth	w2, w1
	sxtw	x0, w0
	lsl	x0, x0, 1
	add	x1, sp, 16
	strh	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 7052]
	add	w0, w0, 2
	str	w0, [sp, 7052]
.L2:
	ldr	w1, [sp, 7052]
	mov	w0, 32678
	cmp	w1, w0
	ble	.L8
	add	x0, sp, 4096
	add	x0, x0, 2928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L9
.L19:
	str	wzr, [sp, 7036]
	ldr	w0, [sp, 7024]
	cmp	w0, 4
	bne	.L10
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	b	.L11
.L10:
	str	wzr, [sp, 7052]
	b	.L12
.L18:
	ldr	w0, [sp, 7024]
	ldrsw	x1, [sp, 7052]
	lsl	x1, x1, 1
	add	x2, sp, 16
	ldrsh	w1, [x2, x1]
	sub	w0, w0, w1
	str	w0, [sp, 7032]
	ldr	w0, [sp, 7052]
	str	w0, [sp, 7044]
	ldr	w0, [sp, 7040]
	sub	w0, w0, #1
	str	w0, [sp, 7048]
	b	.L13
.L17:
	ldr	w1, [sp, 7044]
	ldr	w0, [sp, 7048]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 7028]
	ldrsw	x0, [sp, 7028]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7032]
	cmp	w0, w1
	ble	.L14
	ldr	w0, [sp, 7028]
	add	w0, w0, 1
	str	w0, [sp, 7044]
	b	.L13
.L14:
	ldrsw	x0, [sp, 7028]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 7032]
	cmp	w0, w1
	bge	.L15
	ldr	w0, [sp, 7028]
	sub	w0, w0, #1
	str	w0, [sp, 7048]
	b	.L13
.L15:
	ldr	w0, [sp, 7036]
	add	w0, w0, 1
	str	w0, [sp, 7036]
	b	.L16
.L13:
	ldr	w1, [sp, 7044]
	ldr	w0, [sp, 7048]
	cmp	w1, w0
	ble	.L17
.L16:
	ldr	w0, [sp, 7052]
	add	w0, w0, 1
	str	w0, [sp, 7052]
.L12:
	ldrsw	x0, [sp, 7052]
	lsl	x0, x0, 1
	add	x1, sp, 16
	ldrsh	w0, [x1, x0]
	lsl	w1, w0, 1
	ldr	w0, [sp, 7024]
	cmp	w1, w0
	ble	.L18
	ldr	w1, [sp, 7036]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.L11:
	add	x0, sp, 4096
	add	x0, x0, 2928
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L9:
	ldr	w0, [sp, 7024]
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 7056
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
