	.text
	.p2align	2                               // -- Begin function test_funcdesg
	.type	test_funcdesg,@function
test_funcdesg:                          // @test_funcdesg
// %bb.0:
	ret
.Lfunc_end0:
	.size	test_funcdesg, .Lfunc_end0-test_funcdesg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_funcdesg