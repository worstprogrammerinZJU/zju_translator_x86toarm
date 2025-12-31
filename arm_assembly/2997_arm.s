	.arch armv8-a
	.file	"2997.c"
	.text
	.global	m
	.bss
	.align	2
	.type	m, %object
	.size	m, 4
m:
	.zero	4
	.global	j
	.align	2
	.type	j, %object
	.size	j, 4
j:
	.zero	4
	.global	s
	.align	3
	.type	s, %object
	.size	s, 10001
s:
	.zero	10001
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	b	.L2
.L11:
	str	wzr, [sp, 28]
	adrp	x0, j
	add	x0, x0, :lo12:j
	str	wzr, [x0]
	b	.L3
.L6:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 118
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 120
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 108
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 99
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 100
	beq	.L4
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 109
	bne	.L5
.L4:
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, j
	add	x1, x1, :lo12:j
	str	w2, [x1]
	adrp	x1, s
	add	x2, x1, :lo12:s
	ldrsw	x1, [sp, 28]
	ldrb	w2, [x2, x1]
	adrp	x1, s
	add	x1, x1, :lo12:s
	sxtw	x0, w0
	strb	w2, [x1, x0]
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w2, [x0]
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	str	wzr, [sp, 24]
	mov	w2, 0
	mov	w1, 109
	mov	w0, 0
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 1000
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 1
	mov	w1, 100
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 500
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 99
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 100
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 99
	mov	w1, 120
	ldr	w0, [sp, 28]
	bl	cmpd
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 24]
	add	w0, w0, 90
	str	w0, [sp, 24]
	b	.L8
.L7:
	mov	w2, 1
	mov	w1, 108
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, 50
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 120
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, w1
	str	w0, [sp, 24]
.L8:
	mov	w2, 120
	mov	w1, 105
	ldr	w0, [sp, 28]
	bl	cmpd
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L9
	ldr	w0, [sp, 24]
	add	w0, w0, 9
	str	w0, [sp, 24]
	b	.L10
.L9:
	mov	w2, 1
	mov	w1, 118
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	mov	w2, 3
	mov	w1, 105
	ldr	w0, [sp, 28]
	bl	cmp
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L10:
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	adrp	x0, s
	add	x0, x0, :lo12:s
	bl	gets
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	cmp
	.type	cmp, %function
cmp:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	strb	w1, [sp, 11]
	str	w2, [sp, 4]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	b	.L14
.L17:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 12]
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 11]
	cmp	w1, w0
	bne	.L15
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L15
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	b	.L16
.L15:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L14:
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 28]
.L16:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	cmp, .-cmp
	.align	2
	.global	cmpd
	.type	cmpd, %function
cmpd:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	strb	w1, [sp, 11]
	strb	w2, [sp, 10]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 11]
	strb	w0, [sp, 31]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	b	.L19
.L23:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 12]
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 31]
	cmp	w1, w0
	bne	.L20
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L21
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	b	.L22
.L21:
	adrp	x0, m
	add	x0, x0, :lo12:m
	mov	w1, 1
	str	w1, [x0]
	ldrb	w0, [sp, 10]
	strb	w0, [sp, 31]
.L20:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L19:
	adrp	x0, j
	add	x0, x0, :lo12:j
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L23
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	wzr, [x0]
	ldr	w0, [sp, 24]
.L22:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	cmpd, .-cmpd
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
