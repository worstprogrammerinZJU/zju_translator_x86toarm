	.text
	.p2align	2                               // -- Begin function test_unusual_order
	.type	test_unusual_order,@function
test_unusual_order:                     // @test_unusual_order
// %bb.0:
	sub	sp, sp, #16
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	test_unusual_order, .Lfunc_end0-test_unusual_order
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unusual_order