	.text
	.globl	test_if5                        # -- Begin function test_if5
	.p2align	4, 0x90
test_if5:                               # @test_if5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$101, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig