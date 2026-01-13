	.text
	.p2align	4, 0x90                         # -- Begin function test_constexpr
test_constexpr:                         # @test_constexpr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_constexpr
	.addrsig_sym expect