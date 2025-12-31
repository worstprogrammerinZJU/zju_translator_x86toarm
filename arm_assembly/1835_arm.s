	.arch armv8-a
	.file	"1835.c"
	.text
	.global	Head
	.bss
	.align	2
	.type	Head, %object
	.size	Head, 4
Head:
	.zero	4
	.global	Nova
	.align	2
	.type	Nova, %object
	.size	Nova, 4
Nova:
	.zero	4
	.global	x
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.zero	4
	.global	y
	.align	2
	.type	y, %object
	.size	y, 4
y:
	.zero	4
	.global	z
	.align	2
	.type	z, %object
	.size	z, 4
z:
	.zero	4
	.global	Direct
	.data
	.align	3
	.type	Direct, %object
	.size	Direct, 72
Direct:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	-1
	.global	Left
	.align	3
	.type	Left, %object
	.size	Left, 144
Left:
	.word	-1
	.word	2
	.word	4
	.word	-1
	.word	5
	.word	1
	.word	5
	.word	-1
	.word	0
	.word	2
	.word	-1
	.word	3
	.word	1
	.word	3
	.word	-1
	.word	4
	.word	0
	.word	-1
	.word	-1
	.word	5
	.word	1
	.word	-1
	.word	2
	.word	4
	.word	2
	.word	-1
	.word	3
	.word	5
	.word	-1
	.word	0
	.word	4
	.word	0
	.word	-1
	.word	1
	.word	3
	.word	-1
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"forward"
	.align	3
.LC3:
	.string	"back"
	.align	3
.LC4:
	.string	"left"
	.align	3
.LC5:
	.string	"right"
	.align	3
.LC6:
	.string	"up"
	.align	3
.LC7:
	.string	"down"
	.align	3
.LC8:
	.string	"%d %d %d %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L2
.L11:
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	wzr, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	mov	w1, 2
	str	w1, [x0]
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	wzr, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	wzr, [x0]
	adrp	x0, z
	add	x0, x0, :lo12:z
	str	wzr, [x0]
	add	x0, sp, 128
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 136]
	b	.L3
.L10:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x2, sp, 24
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 124]
	bl	forward
	b	.L5
.L4:
	add	x2, sp, 24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 124]
	bl	back
	b	.L5
.L6:
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 124]
	bl	left
	b	.L5
.L7:
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 124]
	bl	right
	b	.L5
.L8:
	add	x2, sp, 24
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 124]
	bl	up
	b	.L5
.L9:
	add	x2, sp, 24
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 124]
	bl	down
.L5:
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
.L3:
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	blt	.L10
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w1, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w2, [x0]
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldr	w3, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	mov	w4, w0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L2:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	reverse
	.type	reverse, %function
reverse:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w1, w0, 3
	mov	w0, 43691
	movk	w0, 0x2aaa, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	lsl	w0, w0, 1
	sub	w2, w1, w0
	mov	w0, w2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	reverse, .-reverse
	.align	2
	.global	forward
	.type	forward, %function
forward:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Direct
	add	x2, x0, :lo12:Direct
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 8]
	ldr	w0, [sp, 12]
	mul	w1, w1, w0
	adrp	x0, z
	add	x0, x0, :lo12:z
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, z
	add	x0, x0, :lo12:z
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	forward, .-forward
	.align	2
	.global	back
	.type	back, %function
back:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	back, .-back
	.align	2
	.global	left
	.type	left, %function
left:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w3, [x0]
	adrp	x0, Left
	add	x2, x0, :lo12:Left
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	left, .-left
	.align	2
	.global	right
	.type	right, %function
right:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w3, [x0]
	adrp	x0, Left
	add	x2, x0, :lo12:Left
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	right, .-right
	.align	2
	.global	up
	.type	up, %function
up:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w0, [x0]
	str	w0, [sp, 44]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	str	w1, [x0]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	up, .-up
	.align	2
	.global	down
	.type	down, %function
down:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	ldr	w0, [x0]
	str	w0, [sp, 44]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w0, [x0]
	bl	reverse
	mov	w1, w0
	adrp	x0, Nova
	add	x0, x0, :lo12:Nova
	str	w1, [x0]
	adrp	x0, Head
	add	x0, x0, :lo12:Head
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	forward
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	down, .-down
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
