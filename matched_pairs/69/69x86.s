	.text
	.p2align	4, 0x90                         # -- Begin function test_and
test_and:                               # @test_and
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$2, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_and
	.addrsig_sym expect