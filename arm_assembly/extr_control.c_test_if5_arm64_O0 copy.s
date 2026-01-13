	.text
	.globl	test_if5                        // -- Begin function test_if5
	.p2align	2
	.type	test_if5,@function
test_if5:                               // @test_if5
// %bb.0:
	mov	w0, #101
	ret
.Lfunc_end0:
	.size	test_if5, .Lfunc_end0-test_if5
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig