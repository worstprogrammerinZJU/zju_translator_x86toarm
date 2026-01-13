	.text
	.p2align	2                               // -- Begin function test_type
	.type	test_type,@function
test_type:                              // @test_type
// %bb.0:
	sub	sp, sp, #112
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	test_type, .Lfunc_end0-test_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_type