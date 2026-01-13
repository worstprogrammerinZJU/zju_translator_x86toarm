	.text
	.globl	test_if3                        // -- Begin function test_if3
	.p2align	2
	.type	test_if3,@function
test_if3:                               // @test_if3
// %bb.0:
	mov	w0, #99
	ret
.Lfunc_end0:
	.size	test_if3, .Lfunc_end0-test_if3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig