	.text
	.p2align	4, 0x90                         # -- Begin function test_shift
test_shift:                             # @test_shift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$16, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$48, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$2, %esi
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
	.addrsig_sym test_shift
	.addrsig_sym expect