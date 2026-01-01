	.arch armv8-a
	.file	"0155-min-stack.c"
	.text
	.align	2
	.global	nodeCreate
	.type	nodeCreate, %function
nodeCreate:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	nodeCreate, .-nodeCreate
	.section	.rodata
	.align	3
.LC0:
	.string	"/home/xiong/home/summer/dataset/poj-master/poj/0155-min-stack.c"
	.align	3
.LC1:
	.string	"obj"
	.text
	.align	2
	.global	nodePush
	.type	nodePush, %function
nodePush:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L4
	adrp	x0, __PRETTY_FUNCTION__.7
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.7
	mov	w2, 18
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L4:
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 20]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	nodePush, .-nodePush
	.align	2
	.global	nodePop
	.type	nodePop, %function
nodePop:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L6
	adrp	x0, __PRETTY_FUNCTION__.6
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.6
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L6:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L8
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	bl	free
.L8:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	nodePop, .-nodePop
	.align	2
	.global	stackCreate
	.type	stackCreate, %function
stackCreate:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	stackCreate, .-stackCreate
	.align	2
	.global	stackPush
	.type	stackPush, %function
stackPush:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L12
	ldr	w0, [sp, 20]
	bl	nodeCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	b	.L13
.L12:
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w1, [sp, 20]
	bl	nodePush
.L13:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	stackPush, .-stackPush
	.align	2
	.global	stackPop
	.type	stackPop, %function
stackPop:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	bl	nodePop
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w1, w0, #1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	stackPop, .-stackPop
	.section	.rodata
	.align	3
.LC2:
	.string	"stack"
	.align	3
.LC3:
	.string	"stack->top"
	.text
	.align	2
	.global	stackTop
	.type	stackTop, %function
stackTop:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.5
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.5
	mov	w2, 66
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.5
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.5
	mov	w2, 67
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	stackTop, .-stackTop
	.align	2
	.global	minStackCreate
	.type	minStackCreate, %function
minStackCreate:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	minStackCreate, .-minStackCreate
	.align	2
	.global	minStackPush
	.type	minStackPush, %function
minStackPush:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.4
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.4
	mov	w2, 84
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L23
	bl	stackCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	bl	stackCreate
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
.L23:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	w1, [sp, 20]
	bl	stackPush
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L24
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackTop
	str	w0, [sp, 44]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bge	.L25
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 20]
	bl	stackPush
	b	.L27
.L25:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 44]
	bl	stackPush
	b	.L27
.L24:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	w1, [sp, 20]
	bl	stackPush
.L27:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	minStackPush, .-minStackPush
	.align	2
	.global	minStackPop
	.type	minStackPop, %function
minStackPop:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L29
	adrp	x0, __PRETTY_FUNCTION__.3
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3
	mov	w2, 103
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L29:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackPop
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackPop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	minStackPop, .-minStackPop
	.align	2
	.global	minStackTop
	.type	minStackTop, %function
minStackTop:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.2
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.2
	mov	w2, 109
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackTop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	minStackTop, .-minStackTop
	.align	2
	.global	minStackGetMin
	.type	minStackGetMin, %function
minStackGetMin:
.LFB17:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L34
	adrp	x0, __PRETTY_FUNCTION__.1
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.1
	mov	w2, 114
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L34:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackTop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	minStackGetMin, .-minStackGetMin
	.align	2
	.global	minStackFree
	.type	minStackFree, %function
minStackFree:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L37
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 119
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L37:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L38
	b	.L39
.L40:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	stackPop
.L39:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L40
	b	.L41
.L42:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	stackPop
.L41:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	bne	.L42
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	bl	free
.L38:
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	minStackFree, .-minStackFree
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.7, %object
	.size	__PRETTY_FUNCTION__.7, 9
__PRETTY_FUNCTION__.7:
	.string	"nodePush"
	.align	3
	.type	__PRETTY_FUNCTION__.6, %object
	.size	__PRETTY_FUNCTION__.6, 8
__PRETTY_FUNCTION__.6:
	.string	"nodePop"
	.align	3
	.type	__PRETTY_FUNCTION__.5, %object
	.size	__PRETTY_FUNCTION__.5, 9
__PRETTY_FUNCTION__.5:
	.string	"stackTop"
	.align	3
	.type	__PRETTY_FUNCTION__.4, %object
	.size	__PRETTY_FUNCTION__.4, 13
__PRETTY_FUNCTION__.4:
	.string	"minStackPush"
	.align	3
	.type	__PRETTY_FUNCTION__.3, %object
	.size	__PRETTY_FUNCTION__.3, 12
__PRETTY_FUNCTION__.3:
	.string	"minStackPop"
	.align	3
	.type	__PRETTY_FUNCTION__.2, %object
	.size	__PRETTY_FUNCTION__.2, 12
__PRETTY_FUNCTION__.2:
	.string	"minStackTop"
	.align	3
	.type	__PRETTY_FUNCTION__.1, %object
	.size	__PRETTY_FUNCTION__.1, 15
__PRETTY_FUNCTION__.1:
	.string	"minStackGetMin"
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 13
__PRETTY_FUNCTION__.0:
	.string	"minStackFree"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
