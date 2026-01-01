	.arch armv8-a
	.file	"1456-maximum-number-of-vowels-in-a-substring-of-given-length.c"
	.text
	.align	2
	.global	isVowel
	.type	isVowel, %function
isVowel:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 97
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 101
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 105
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 111
	beq	.L2
	ldrb	w0, [sp, 15]
	cmp	w0, 117
	bne	.L3
.L2:
	mov	w0, 1
	b	.L5
.L3:
	mov	w0, 0
.L5:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	isVowel, .-isVowel
	.align	2
	.global	maxVowels
	.type	maxVowels, %function
maxVowels:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	wzr, [sp, 76]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 60]
	str	wzr, [sp, 68]
	b	.L7
.L8:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	mov	w1, w0
	ldr	w0, [sp, 76]
	add	w0, w0, w1
	str	w0, [sp, 76]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L7:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 76]
	str	w0, [sp, 72]
	ldr	w0, [sp, 36]
	str	w0, [sp, 64]
	b	.L9
.L11:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	mov	w1, w0
	ldr	w0, [sp, 76]
	sub	w19, w0, w1
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	isVowel
	add	w0, w19, w0
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 76]
	str	w0, [sp, 72]
.L10:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L9:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	maxVowels, .-maxVowels
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
