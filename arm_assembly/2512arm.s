	.text
	.p2align	2                               // -- Begin function test_signed
	.type	test_signed,@function
test_signed:                            // @test_signed
// %bb.0:
	sub	sp, sp, #48
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_signed, .Lfunc_end0-test_signed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_signed