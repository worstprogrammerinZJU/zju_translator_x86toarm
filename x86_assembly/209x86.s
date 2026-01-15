	.text
	.p2align	4, 0x90                         # -- Begin function test_return_address
test_return_address:                    # @test_return_address
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_return_address