	.arch armv8-a
	.file	"2503.c"
	.text
	.global	link
	.bss
	.align	3
	.type	link, %object
	.size	link, 165016
link:
	.zero	165016
	.global	word
	.align	3
	.type	word, %object
	.size	word, 1100000
word:
	.zero	1100000
	.global	dialect
	.align	3
	.type	dialect, %object
	.size	dialect, 1100000
dialect:
	.zero	1100000
	.section	.rodata
	.align	3
.LC0:
	.string	"eh"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	wzr, [sp, 88]
	add	x0, sp, 24
	bl	gets
	b	.L2
.L5:
	str	wzr, [sp, 92]
	b	.L3
.L4:
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	ldrb	w4, [x1, x0]
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 92]
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L3:
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L4
	ldr	w0, [sp, 92]
	add	w1, w0, 1
	str	w1, [sp, 92]
	adrp	x1, word
	add	x3, x1, :lo12:word
	sxtw	x2, w0
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x2, x0, x1
	ldrsw	x0, [sp, 92]
	add	x1, sp, 24
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	strcpy
	ldrsw	x1, [sp, 88]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x0, x0, x1
	bl	ELFhash
	str	w0, [sp, 76]
	mov	x0, 16
	bl	malloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	ldr	w1, [sp, 88]
	str	w1, [x0]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 80]
	str	x1, [x0, 8]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x2, [sp, 80]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	add	x0, sp, 24
	bl	gets
.L2:
	ldrb	w0, [sp, 24]
	cmp	w0, 0
	bne	.L5
	b	.L6
.L12:
	add	x0, sp, 24
	bl	ELFhash
	str	w0, [sp, 76]
	adrp	x0, link
	add	x0, x0, :lo12:link
	ldrsw	x1, [sp, 76]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [sp, 80]
	b	.L7
.L10:
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, dialect
	add	x1, x1, :lo12:dialect
	add	x1, x0, x1
	add	x0, sp, 24
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	ldr	x0, [sp, 80]
	ldr	x0, [x0, 8]
	str	x0, [sp, 80]
.L7:
	ldr	x0, [sp, 80]
	cmp	x0, 0
	bne	.L10
	b	.L9
.L14:
	nop
.L9:
	ldr	x0, [sp, 80]
	cmp	x0, 0
	bne	.L11
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L6
.L11:
	ldr	x0, [sp, 80]
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	bl	puts
.L6:
	add	x0, sp, 24
	bl	gets
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.global	ELFhash
	.type	ELFhash, %function
ELFhash:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	xzr, [sp, 24]
	b	.L16
.L18:
	ldr	x0, [sp, 24]
	lsl	x1, x0, 4
	ldr	x0, [sp, 8]
	add	x2, x0, 1
	str	x2, [sp, 8]
	ldrb	w0, [x0]
	and	x0, x0, 255
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	and	x0, x0, 4026531840
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L17
	ldr	x0, [sp, 16]
	lsr	x0, x0, 24
	ldr	x1, [sp, 24]
	eor	x0, x1, x0
	str	x0, [sp, 24]
.L17:
	ldr	x0, [sp, 16]
	mvn	x0, x0
	ldr	x1, [sp, 24]
	and	x0, x1, x0
	str	x0, [sp, 24]
.L16:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	ldr	x1, [sp, 24]
	mov	x0, 175
	movk	x0, 0x53b3, lsl 16
	movk	x0, 0x94b8, lsl 32
	movk	x0, 0x65ab, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 13
	mov	x2, 20627
	mul	x0, x0, x2
	sub	x0, x1, x0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	ELFhash, .-ELFhash
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
