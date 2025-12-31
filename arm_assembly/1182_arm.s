	.arch armv8-a
	.file	"1182.c"
	.text
	.global	Parent
	.bss
	.align	3
	.type	Parent, %object
	.size	Parent, 200004
Parent:
	.zero	200004
	.global	eat
	.align	3
	.type	eat, %object
	.size	eat, 200004
eat:
	.zero	200004
	.global	beeat
	.align	3
	.type	beeat, %object
	.size	beeat, 200004
beeat:
	.zero	200004
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d"
	.align	3
.LC1:
	.string	"%d%d%d"
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	wzr, [sp, 56]
	add	x1, sp, 52
	add	x0, sp, 48
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
.L3:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L3
	str	wzr, [sp, 60]
	b	.L4
.L24:
	add	x2, sp, 40
	add	x1, sp, 44
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L5
	ldr	w0, [sp, 36]
	cmp	w0, 2
	bne	.L6
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L6
.L5:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
.L6:
	ldr	w0, [sp, 44]
	bl	root
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	bl	root
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L8
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 44]
	bl	root
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L8:
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L9
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 44]
	bl	root
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L9:
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L10
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 40]
	bl	root
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L10:
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L11
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w19, [sp, 40]
	bl	root
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w19
	str	w2, [x0, x1, lsl 2]
.L11:
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L13
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L14
.L13:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
.L14:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	bl	merge
	b	.L7
.L12:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	beq	.L16
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L17
.L16:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L7
.L17:
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L18
	ldr	w1, [sp, 44]
	ldr	w2, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L19
.L18:
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
.L19:
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L20
	ldr	w1, [sp, 40]
	ldr	w2, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L21
.L20:
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
.L21:
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L22
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L22
	ldr	w1, [sp, 44]
	ldr	w3, [sp, 40]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L7
.L22:
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L23
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L23
	ldr	w1, [sp, 40]
	ldr	w3, [sp, 44]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	b	.L7
.L23:
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L7
	ldr	w1, [sp, 44]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
.L7:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L4:
	ldr	w0, [sp, 52]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L24
	ldr	w1, [sp, 56]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
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
	b	.L27
.L28:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
.L27:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L28
	b	.L29
.L30:
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
.L29:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L30
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
	bne	.L33
	ldr	w0, [sp, 28]
	b	.L34
.L33:
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L35
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
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L36
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L36
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L37
.L36:
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L37
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L37
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L37:
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L38
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L38
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L39
.L38:
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L39
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L39
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
.L39:
	ldr	w0, [sp, 28]
	b	.L34
.L35:
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
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L40
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L40
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L41
.L40:
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L41
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, eat
	add	x0, x0, :lo12:eat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L41:
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L42
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L42
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L43
.L42:
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L43
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L43
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 28]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	w0, w2
	bl	merge
	mov	w2, w0
	adrp	x0, beeat
	add	x0, x0, :lo12:beeat
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
.L43:
	ldr	w0, [sp, 24]
.L34:
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
