	.text
	.p2align	2                               // -- Begin function test_unsigned
	.type	test_unsigned,@function
test_unsigned:                          // @test_unsigned
// %bb.0:
	sub	sp, sp, #48
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_unsigned, .Lfunc_end0-test_unsigned
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_unsigned