	.text
	.globl	decContextGetRounding           # -- Begin function decContextGetRounding
	.p2align	4, 0x90
decContextGetRounding:                  # @decContextGetRounding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig