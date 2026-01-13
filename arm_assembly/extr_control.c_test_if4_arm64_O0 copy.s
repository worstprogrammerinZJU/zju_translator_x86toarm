	.text
	.globl	test_if4                        // -- Begin function test_if4
	.p2align	2
	.type	test_if4,@function
test_if4:                               // @test_if4
// %bb.0:
	mov	w0, #100
	ret
.Lfunc_end0:
	.size	test_if4, .Lfunc_end0-test_if4
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig