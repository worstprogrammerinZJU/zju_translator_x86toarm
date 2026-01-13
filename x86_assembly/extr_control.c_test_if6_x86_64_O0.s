	.text
	.globl	test_if6                        # -- Begin function test_if6
	.p2align	4, 0x90
test_if6:                               # @test_if6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$102, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig