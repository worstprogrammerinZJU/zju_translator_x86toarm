	.text
	.globl	ledcRead                        // -- Begin function ledcRead
	.p2align	2
	.type	ledcRead,@function
ledcRead:                               // @ledcRead
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, LEDC
	ldr	x8, [x8, :lo12:LEDC]
	ldr	w9, [sp, #8]
	mov	w11, #8
	sdiv	w9, w9, w11
	ldr	x8, [x8, w9, sxtw #3]
	ldr	w9, [sp, #8]
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	asr	w8, w8, #4
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	ledcRead, .Lfunc_end0-ledcRead
                                        // -- End function
	.type	LEDC,@object                    // @LEDC
	.bss
	.globl	LEDC
	.p2align	3
LEDC:
	.zero	8
	.size	LEDC, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym LEDC