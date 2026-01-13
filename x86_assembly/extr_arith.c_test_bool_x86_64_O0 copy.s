	.text
	.p2align	4, 0x90                         # -- Begin function test_bool
test_bool:                              # @test_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_bool
	.addrsig_sym expect