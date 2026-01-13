	.text
	.globl	test_if2                        // -- Begin function test_if2
	.p2align	2
	.type	test_if2,@function
test_if2:                               // @test_if2
// %bb.0:
	mov	w0, #98
	ret
.Lfunc_end0:
	.size	test_if2, .Lfunc_end0-test_if2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig