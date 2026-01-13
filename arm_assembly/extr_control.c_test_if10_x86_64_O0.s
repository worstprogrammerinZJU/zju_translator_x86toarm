	.text
	.globl	test_if10                       # -- Begin function test_if10
	.p2align	4, 0x90
test_if10:                              # @test_if10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$106, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig