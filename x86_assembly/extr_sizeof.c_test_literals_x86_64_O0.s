	.text
	.p2align	4, 0x90                         # -- Begin function test_literals
test_literals:                          # @test_literals
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_literals
	.addrsig_sym expect