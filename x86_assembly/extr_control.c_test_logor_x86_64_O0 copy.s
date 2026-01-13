	.text
	.p2align	4, 0x90                         # -- Begin function test_logor
test_logor:                             # @test_logor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_logor
	.addrsig_sym expect