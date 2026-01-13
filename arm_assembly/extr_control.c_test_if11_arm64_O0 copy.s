	.text
	.globl	test_if11                       // -- Begin function test_if11
	.p2align	2
	.type	test_if11,@function
test_if11:                              // @test_if11
// %bb.0:
	sub	sp, sp, #16
	mov	w8, #1
	tbz	w8, #0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #107
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	test_if11, .Lfunc_end0-test_if11
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig