	.arch armv8-a
	.file	"1291.c"
	.text
	.global	Parent
	.bss
	.align	3
	.type	Parent, %object
	.size	Parent, 4004
Parent:
	.zero	4004
	.global	sen
	.align	3
	.type	sen, %object
	.size	sen, 4004
sen:
	.zero	4004
	.global	tru
	.align	3
	.type	tru, %object
	.size	tru, 4004
tru:
	.zero	4004
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s%d%s%s"
	.align	3
.LC2:
	.string	"Inconsistent"
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L32:
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L3
.L4:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 124]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 124]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L3:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L5
.L13:
	add	x3, sp, 40
	add	x2, sp, 56
	add	x1, sp, 92
	add	x0, sp, 72
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 124]
	bl	root
	str	w0, [sp, 120]
	ldr	w0, [sp, 92]
	bl	root
	str	w0, [sp, 92]
	ldrb	w0, [sp, 40]
	cmp	w0, 116
	bne	.L6
	ldr	w0, [sp, 92]
	mov	w1, w0
	ldr	w0, [sp, 120]
	bl	merge
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L7
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	b	.L10
.L7:
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L9
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L9
	ldr	w3, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L10
.L9:
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	ldr	w3, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L10
.L6:
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L11
	ldr	w2, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
.L11:
	ldr	w0, [sp, 92]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L12
	ldr	w1, [sp, 92]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 120]
	bl	merge
.L12:
	ldr	w19, [sp, 92]
	ldr	w0, [sp, 120]
	bl	root
	mov	w2, w0
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L10:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L5:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L13
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L14
.L26:
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	blt	.L15
	ldr	w0, [sp, 124]
	bl	root
	str	w0, [sp, 116]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	bl	root
	str	w0, [sp, 104]
	ldr	w1, [sp, 116]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	beq	.L34
	mov	w0, 1
	str	w0, [sp, 120]
	str	wzr, [sp, 112]
	str	wzr, [sp, 108]
	b	.L18
.L21:
	ldr	w0, [sp, 120]
	bl	root
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 116]
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	b	.L20
.L19:
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	bne	.L20
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	adrp	x0, sen
	add	x0, x0, :lo12:sen
	ldrsw	x1, [sp, 120]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
.L20:
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L18:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L21
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 108]
	cmp	w1, w0
	ble	.L22
	ldr	w0, [sp, 104]
	str	w0, [sp, 116]
.L22:
	mov	w0, 1
	str	w0, [sp, 120]
	b	.L23
.L25:
	ldr	w0, [sp, 120]
	bl	root
	mov	w1, w0
	ldr	w0, [sp, 116]
	cmp	w0, w1
	bne	.L24
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 120]
	str	wzr, [x0, x1, lsl 2]
.L24:
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L23:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L25
.L15:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L14:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L26
	b	.L17
.L34:
	nop
.L17:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	bgt	.L27
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L28
.L27:
	mov	w0, 1
	str	w0, [sp, 124]
	str	wzr, [sp, 112]
	b	.L29
.L31:
	adrp	x0, tru
	add	x0, x0, :lo12:tru
	ldrsw	x1, [sp, 124]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L30
	ldr	w0, [sp, 112]
	add	w0, w0, 1
	str	w0, [sp, 112]
.L30:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L29:
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	ble	.L31
	ldr	w1, [sp, 112]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
.L28:
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	ldr	w0, [sp, 96]
	cmp	w0, 0
	bne	.L32
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	root
	.type	root, %function
root:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L36
.L37:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
.L36:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L37
	b	.L38
.L39:
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L38:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L39
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	root, .-root
	.align	2
	.global	merge
	.type	merge, %function
merge:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L45
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L44
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L41
.L44:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L41
.L45:
	nop
.L41:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
