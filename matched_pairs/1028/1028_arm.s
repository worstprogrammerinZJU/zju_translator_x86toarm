	.arch armv8-a
	.file	"1028.c"
	.text
	.global	top
	.bss
	.align	2
	.type	top, %object
	.size	top, 4
top:
	.zero	4
	.global	up
	.align	2
	.type	up, %object
	.size	up, 4
up:
	.zero	4
	.global	stack
	.data
	.align	3
	.type	stack, %object
	.size	stack, 11000
stack:
	.string	"http://www.acm.org/"
	.zero	80
	.zero	10900
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"VISIT"
	.align	3
.LC2:
	.string	"BACK"
	.align	3
.LC3:
	.string	"Ignored"
	.align	3
.LC4:
	.string	"FORWARD"
	.align	3
.LC5:
	.string	"QUIT"
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
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
.L8:
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	bl	puts
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w1, [x0]
	adrp	x0, up
	add	x0, x0, :lo12:up
	str	w1, [x0]
	b	.L4
.L3:
	add	x2, sp, 24
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L4
.L6:
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	bl	puts
	b	.L4
.L5:
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w1, [x0]
	adrp	x0, up
	add	x0, x0, :lo12:up
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L7
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	b	.L4
.L7:
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	w1, [x0]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	add	x0, x0, x1
	bl	puts
.L4:
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
.L2:
	add	x2, sp, 24
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
