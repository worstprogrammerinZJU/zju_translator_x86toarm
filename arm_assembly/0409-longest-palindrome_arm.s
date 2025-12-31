	.arch armv8-a
	.file	"0409-longest-palindrome.c"
	.text
	.align	2
	.global	longestPalindrome
	.type	longestPalindrome, %function
longestPalindrome:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #576
	.cfi_def_cfa_offset 576
	stp	x29, x30, [sp]
	.cfi_offset 29, -576
	.cfi_offset 30, -568
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	mov	x1, 512
	mov	x2, x1
	mov	w1, 0
	bl	memset
	ldr	x0, [sp, 24]
	str	x0, [sp, 568]
	b	.L2
.L3:
	ldr	x0, [sp, 568]
	ldrb	w0, [x0]
	mov	w3, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	ldr	x0, [sp, 568]
	add	x0, x0, 1
	str	x0, [sp, 568]
.L2:
	ldr	x0, [sp, 568]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	str	wzr, [sp, 564]
	str	wzr, [sp, 560]
	mov	w0, 65
	str	w0, [sp, 556]
	b	.L4
.L7:
	ldrsw	x0, [sp, 556]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	str	w0, [sp, 564]
	ldrsw	x0, [sp, 556]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 560]
	add	w0, w1, w0
	str	w0, [sp, 560]
	b	.L6
.L5:
	ldrsw	x0, [sp, 556]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 560]
	add	w0, w1, w0
	str	w0, [sp, 560]
.L6:
	ldr	w0, [sp, 556]
	add	w0, w0, 1
	str	w0, [sp, 556]
.L4:
	ldr	w0, [sp, 556]
	cmp	w0, 122
	ble	.L7
	ldr	w1, [sp, 560]
	ldr	w0, [sp, 564]
	add	w0, w1, w0
	str	w0, [sp, 560]
	ldr	w0, [sp, 560]
	ldp	x29, x30, [sp]
	add	sp, sp, 576
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	longestPalindrome, .-longestPalindrome
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
