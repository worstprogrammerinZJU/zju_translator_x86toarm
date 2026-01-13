	.text
	.p2align	4, 0x90                         # -- Begin function test_arrays
test_arrays:                            # @test_arrays
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$7, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$30, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$32, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_arrays
	.addrsig_sym expect