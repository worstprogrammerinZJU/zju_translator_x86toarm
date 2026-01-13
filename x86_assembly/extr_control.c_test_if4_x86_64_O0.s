	.text
	.globl	test_if4                        # -- Begin function test_if4
	.p2align	4, 0x90
test_if4:                               # @test_if4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$100, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig