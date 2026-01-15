	.text
	.p2align	4, 0x90                         # -- Begin function test_xor
test_xor:                               # @test_xor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$10, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_xor
	.addrsig_sym expect