	.text
	.p2align	4, 0x90                         # -- Begin function test_or
test_or:                                # @test_or
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$7, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$7, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_or
	.addrsig_sym expect