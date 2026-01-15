	.text
	.p2align	2                               // -- Begin function test_align
	.type	test_align,@function
test_align:                             // @test_align
// %bb.0:
	ret
.Lfunc_end0:
	.size	test_align, .Lfunc_end0-test_align
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_align