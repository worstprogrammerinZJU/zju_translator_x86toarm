	.text
	.globl	test_if1                        // -- Begin function test_if1
	.p2align	2
	.type	test_if1,@function
test_if1:                               // @test_if1
// %bb.0:
	mov	w0, #97
	ret
.Lfunc_end0:
	.size	test_if1, .Lfunc_end0-test_if1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig