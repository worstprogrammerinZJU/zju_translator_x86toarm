	.text
	.globl	test_if10                       // -- Begin function test_if10
	.p2align	2
	.type	test_if10,@function
test_if10:                              // @test_if10
// %bb.0:
	mov	w0, #106
	ret
.Lfunc_end0:
	.size	test_if10, .Lfunc_end0-test_if10
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig