	.text
	.globl	test_if1                        # -- Begin function test_if1
	.p2align	4, 0x90
test_if1:                               # @test_if1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$97, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig