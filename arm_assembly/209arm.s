	.text
	.p2align	2                               // -- Begin function test_return_address
	.type	test_return_address,@function
test_return_address:                    // @test_return_address
// %bb.0:
	ret
.Lfunc_end0:
	.size	test_return_address, .Lfunc_end0-test_return_address
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_return_address