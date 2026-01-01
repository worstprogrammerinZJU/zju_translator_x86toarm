	.arch armv8-a
	.file	"3080.c"
	.text
	.global	count
	.bss
	.align	2
	.type	count, %object
	.size	count, 4
count:
	.zero	4
	.global	s
	.align	3
	.type	s, %object
	.size	s, 1200
s:
	.zero	1200
	.global	ans
	.align	3
	.type	ans, %object
	.size	ans, 1200
ans:
	.zero	1200
	.global	goal
	.align	3
	.type	goal, %object
	.size	goal, 80
goal:
	.zero	80
	.text
	.align	2
	.global	find
	.type	find, %function
find:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	wzr, [sp, 20]
	b	.L2
.L9:
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
	b	.L3
.L6:
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	ldrsw	x0, [sp, 28]
	ldrb	w2, [x1, x0]
	adrp	x0, s
	add	x4, x0, :lo12:s
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 4]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x4, x0
	add	x0, x0, x3
	ldrb	w0, [x0]
	cmp	w2, w0
	bne	.L10
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L6
	b	.L5
.L10:
	nop
.L5:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L8
.L7:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	mov	w1, 60
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	ldr	w1, [sp, 20]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
.L8:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	find, .-find
	.align	2
	.global	copy
	.type	copy, %function
copy:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L12
.L13:
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w5, [x0]
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	ldrsw	x0, [sp, 28]
	ldrb	w4, [x1, x0]
	adrp	x0, ans
	add	x3, x0, :lo12:ans
	ldrsw	x2, [sp, 24]
	sxtw	x1, w5
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L12:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L13
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	copy, .-copy
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"no significant commonalities"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	add	x0, sp, 100
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 124]
	b	.L15
.L35:
	mov	x2, 1200
	mov	w1, 0
	adrp	x0, ans
	add	x0, x0, :lo12:ans
	bl	memset
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, goal
	add	x1, x0, :lo12:goal
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 108]
	str	wzr, [sp, 120]
	b	.L16
.L17:
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, s
	add	x1, x1, :lo12:s
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L16:
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L17
	mov	w0, 60
	str	w0, [sp, 112]
	b	.L18
.L33:
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	wzr, [x0]
	str	wzr, [sp, 120]
	b	.L19
.L25:
	str	wzr, [sp, 116]
	b	.L20
.L23:
	ldr	w2, [sp, 116]
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 120]
	bl	find
	str	w0, [sp, 104]
	ldr	w0, [sp, 104]
	cmp	w0, 0
	beq	.L37
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
.L20:
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L23
	b	.L22
.L37:
	nop
.L22:
	ldr	w0, [sp, 96]
	sub	w0, w0, #1
	ldr	w1, [sp, 116]
	cmp	w1, w0
	bne	.L24
	ldr	w1, [sp, 112]
	ldr	w0, [sp, 120]
	bl	copy
	mov	w0, 1
	str	w0, [sp, 108]
.L24:
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L19:
	mov	w1, 60
	ldr	w0, [sp, 112]
	sub	w0, w1, w0
	ldr	w1, [sp, 120]
	cmp	w1, w0
	ble	.L25
	ldr	w0, [sp, 108]
	cmp	w0, 0
	beq	.L26
	str	wzr, [sp, 120]
	b	.L27
.L31:
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 116]
	b	.L28
.L30:
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	ble	.L29
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x1, x0, x1
	add	x0, sp, 16
	bl	strcpy
	ldrsw	x1, [sp, 120]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x2, x0, x1
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldrsw	x1, [sp, 116]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	adrp	x1, ans
	add	x1, x1, :lo12:ans
	add	x0, x0, x1
	add	x1, sp, 16
	bl	strcpy
.L29:
	ldr	w0, [sp, 116]
	add	w0, w0, 1
	str	w0, [sp, 116]
.L28:
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	ldr	w1, [sp, 116]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L27:
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L31
	adrp	x0, ans
	add	x0, x0, :lo12:ans
	bl	puts
	b	.L32
.L26:
	ldr	w0, [sp, 112]
	sub	w0, w0, #1
	str	w0, [sp, 112]
.L18:
	ldr	w0, [sp, 112]
	cmp	w0, 2
	bgt	.L33
.L32:
	ldr	w0, [sp, 108]
	cmp	w0, 0
	bne	.L34
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
.L34:
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L15:
	ldr	w0, [sp, 100]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L35
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
