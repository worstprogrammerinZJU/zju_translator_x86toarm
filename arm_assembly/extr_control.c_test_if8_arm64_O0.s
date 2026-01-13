	.text
	.globl	test_if8                        // -- Begin function test_if8
	.p2align	2
	.type	test_if8,@function
test_if8:                               // @test_if8
// %bb.0:
	mov	w0, #104
	ret
.Lfunc_end0:
	.size	test_if8, .Lfunc_end0-test_if8
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig