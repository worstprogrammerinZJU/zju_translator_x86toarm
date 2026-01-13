	.text
	.globl	test_if8                        # -- Begin function test_if8
	.p2align	4, 0x90
test_if8:                               # @test_if8
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$104, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig