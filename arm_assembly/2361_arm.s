	.arch armv8-a
	.file	"2361.c"
	.text
	.global	s
	.bss
	.align	3
	.type	s, %object
	.size	s, 20
s:
	.zero	20
	.text
	.align	2
	.global	find
	.type	find, %function
find:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L2
	mov	w0, 1
	b	.L3
.L2:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	b	.L3
.L4:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L5
	mov	w0, 1
	b	.L3
.L5:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 3]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L3
.L6:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 1]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 7]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L3
.L7:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 5]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	b	.L3
.L8:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 8]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L9
	mov	w0, 1
	b	.L3
.L9:
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 2]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 4]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrb	w0, [x0, 6]
	ldrb	w1, [sp, 15]
	cmp	w1, w0
	bne	.L10
	mov	w0, 1
	b	.L3
.L10:
	mov	w0, 0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	find, .-find
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"yes"
	.align	3
.LC3:
	.string	"no"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L12
.L29:
	str	wzr, [sp, 60]
	b	.L13
.L16:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L14
.L15:
	ldr	w1, [sp, 60]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 56]
	add	w3, w1, w0
	ldrsw	x0, [sp, 56]
	add	x1, sp, 16
	ldrb	w2, [x1, x0]
	adrp	x0, s
	add	x1, x0, :lo12:s
	sxtw	x0, w3
	strb	w2, [x1, x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L14:
	ldr	w0, [sp, 56]
	cmp	w0, 2
	ble	.L15
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L13:
	ldr	w0, [sp, 60]
	cmp	w0, 2
	ble	.L16
	str	wzr, [sp, 48]
	ldr	w0, [sp, 48]
	str	w0, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L17
.L20:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	cmp	w0, 88
	bne	.L18
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L19
.L18:
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	cmp	w0, 79
	bne	.L19
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L19:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L17:
	ldr	w0, [sp, 60]
	cmp	w0, 8
	ble	.L20
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	beq	.L21
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L22
.L21:
	mov	w0, 88
	bl	find
	str	w0, [sp, 36]
	mov	w0, 79
	bl	find
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L23
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L23
	str	wzr, [sp, 40]
	b	.L24
.L23:
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L25
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bne	.L25
	str	wzr, [sp, 40]
	b	.L24
.L25:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L31
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L31
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L31
	str	wzr, [sp, 40]
	b	.L31
.L24:
	b	.L31
.L22:
	str	wzr, [sp, 40]
	b	.L26
.L31:
	nop
.L26:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L27
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	b	.L28
.L27:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L28:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L12:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L29
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
