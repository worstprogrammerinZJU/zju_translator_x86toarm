	.text
	.globl	constrain                       // -- Begin function constrain
	.p2align	2
	.type	constrain,@function
constrain:                              // @constrain
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	str	s1, [sp, #4]
	str	s2, [sp]
	ldr	s0, [sp]
	ldr	s1, [sp, #8]
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_2:
	ldr	s0, [sp]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	constrain, .Lfunc_end0-constrain
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig