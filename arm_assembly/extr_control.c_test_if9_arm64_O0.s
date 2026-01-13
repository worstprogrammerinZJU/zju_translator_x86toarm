	.text
	.globl	test_if9                        // -- Begin function test_if9
	.p2align	2
	.type	test_if9,@function
test_if9:                               // @test_if9
// %bb.0:
	mov	w0, #105
	ret
.Lfunc_end0:
	.size	test_if9, .Lfunc_end0-test_if9
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig