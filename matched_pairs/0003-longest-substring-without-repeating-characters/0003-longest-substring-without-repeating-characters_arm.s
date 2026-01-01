	.arch armv8-a
	.file	"0003-longest-substring-without-repeating-characters.c"
	.text
	.align	2
	.global	max
	.type	max, %function
max:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	max, .-max
	.align	2
	.global	lengthOfLongestSubstring
	.type	lengthOfLongestSubstring, %function
lengthOfLongestSubstring:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #560
	.cfi_def_cfa_offset 560
	stp	x29, x30, [sp]
	.cfi_offset 29, -560
	.cfi_offset 30, -552
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x1, 512
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 556]
	str	wzr, [sp, 552]
	str	wzr, [sp, 548]
	b	.L4
.L8:
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 1
	ble	.L5
	b	.L6
.L7:
	ldrsw	x0, [sp, 556]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 556]
	add	w0, w0, 1
	str	w0, [sp, 556]
.L6:
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bgt	.L7
.L5:
	ldr	w1, [sp, 552]
	ldr	w0, [sp, 556]
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 548]
	bl	max
	str	w0, [sp, 548]
	ldr	w0, [sp, 552]
	add	w0, w0, 1
	str	w0, [sp, 552]
.L4:
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 548]
	ldp	x29, x30, [sp]
	add	sp, sp, 560
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	lengthOfLongestSubstring, .-lengthOfLongestSubstring
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
