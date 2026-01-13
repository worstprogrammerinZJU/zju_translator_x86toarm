	.text
	.globl	test_if7                        # -- Begin function test_if7
	.p2align	4, 0x90
test_if7:                               # @test_if7
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$103, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig