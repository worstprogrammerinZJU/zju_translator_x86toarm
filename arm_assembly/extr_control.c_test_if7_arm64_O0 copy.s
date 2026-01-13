	.text
	.globl	test_if7                        // -- Begin function test_if7
	.p2align	2
	.type	test_if7,@function
test_if7:                               // @test_if7
// %bb.0:
	mov	w0, #103
	ret
.Lfunc_end0:
	.size	test_if7, .Lfunc_end0-test_if7
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig