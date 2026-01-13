	.text
	.p2align	4, 0x90                         # -- Begin function test_pointer
test_pointer:                           # @test_pointer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$40, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_pointer
	.addrsig_sym expect