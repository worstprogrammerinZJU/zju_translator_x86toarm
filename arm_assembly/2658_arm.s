	.arch armv8-a
	.file	"2658.c"
	.text
	.global	syllable
	.bss
	.align	3
	.type	syllable, %object
	.size	syllable, 240
syllable:
	.zero	240
	.text
	.align	2
	.global	rhyme
	.type	rhyme, %function
rhyme:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, syllable+60
	add	x1, x0, :lo12:syllable+60
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L2
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	b	.L4
.L3:
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable+120
	add	x0, x0, :lo12:syllable+120
	bl	strcmp
	cmp	w0, 0
	bne	.L5
	mov	w0, 1
	b	.L4
.L5:
	mov	w0, 4
	b	.L4
.L2:
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable+60
	add	x0, x0, :lo12:syllable+60
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, 2
	b	.L4
.L7:
	mov	w0, 4
	b	.L4
.L6:
	adrp	x0, syllable+180
	add	x1, x0, :lo12:syllable+180
	adrp	x0, syllable
	add	x0, x0, :lo12:syllable
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	adrp	x0, syllable+120
	add	x1, x0, :lo12:syllable+120
	adrp	x0, syllable+60
	add	x0, x0, :lo12:syllable+60
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	mov	w0, 3
	b	.L4
.L9:
	mov	w0, 4
	b	.L4
.L8:
	mov	w0, 4
.L4:
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	rhyme, .-rhyme
	.section	.rodata
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 156
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 172]
	b	.L11
.L24:
	str	wzr, [sp, 168]
	b	.L12
.L23:
	add	x0, sp, 56
	bl	gets
	str	wzr, [sp, 164]
	str	wzr, [sp, 160]
	b	.L13
.L15:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L14
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 160]
.L14:
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
.L13:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 160]
	str	w0, [sp, 164]
	b	.L16
.L20:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L17
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L17
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	add	w0, w0, 32
	and	w2, w0, 255
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	strb	w2, [x1, x0]
.L17:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 97
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 101
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 105
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	beq	.L18
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 117
	bne	.L19
.L18:
	ldr	w0, [sp, 164]
	str	w0, [sp, 160]
.L19:
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
.L16:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 160]
	str	w0, [sp, 164]
	str	wzr, [sp, 160]
	b	.L21
.L22:
	ldr	w0, [sp, 160]
	add	w1, w0, 1
	str	w1, [sp, 160]
	ldrsw	x1, [sp, 164]
	add	x2, sp, 56
	ldrb	w4, [x2, x1]
	adrp	x1, syllable
	add	x3, x1, :lo12:syllable
	sxtw	x2, w0
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, w4
	strb	w1, [x0]
	ldr	w0, [sp, 164]
	add	w0, w0, 1
	str	w0, [sp, 164]
.L21:
	ldrsw	x0, [sp, 164]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L22
	adrp	x0, syllable
	add	x3, x0, :lo12:syllable
	ldrsw	x2, [sp, 160]
	ldrsw	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	strb	wzr, [x0]
	ldr	w0, [sp, 168]
	add	w0, w0, 1
	str	w0, [sp, 168]
.L12:
	ldr	w0, [sp, 168]
	cmp	w0, 3
	ble	.L23
	bl	rhyme
	add	x1, sp, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	bl	puts
	ldr	w0, [sp, 172]
	add	w0, w0, 1
	str	w0, [sp, 172]
.L11:
	ldr	w0, [sp, 156]
	ldr	w1, [sp, 172]
	cmp	w1, w0
	blt	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"perfect"
	.string	"even"
	.zero	3
	.string	"cross"
	.zero	2
	.string	"shell"
	.zero	2
	.string	"free"
	.zero	3
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
