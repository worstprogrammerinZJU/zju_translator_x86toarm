	.text
	.globl	test_if6                        // -- Begin function test_if6
	.p2align	2
	.type	test_if6,@function
test_if6:                               // @test_if6
// %bb.0:
	mov	w0, #102
	ret
.Lfunc_end0:
	.size	test_if6, .Lfunc_end0-test_if6
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig