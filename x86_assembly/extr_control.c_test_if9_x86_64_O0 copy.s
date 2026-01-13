	.text
	.globl	test_if9                        # -- Begin function test_if9
	.p2align	4, 0x90
test_if9:                               # @test_if9
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$105, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig