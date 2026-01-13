	.text
	.globl	test_if3                        # -- Begin function test_if3
	.p2align	4, 0x90
test_if3:                               # @test_if3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$99, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig