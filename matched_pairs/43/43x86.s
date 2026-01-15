	.text
	.p2align	4, 0x90                         # -- Begin function test_ternary
test_ternary:                           # @test_ternary
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$51, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$52, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$26, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$17, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$52, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_ternary
	.addrsig_sym expect