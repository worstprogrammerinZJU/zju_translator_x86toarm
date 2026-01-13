	.text
	.globl	test_if2                        # -- Begin function test_if2
	.p2align	4, 0x90
test_if2:                               # @test_if2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$98, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig