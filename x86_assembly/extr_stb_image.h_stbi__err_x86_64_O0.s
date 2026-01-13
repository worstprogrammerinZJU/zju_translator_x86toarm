	.text
	.p2align	4, 0x90                         # -- Begin function stbi__err
stbi__err:                              # @stbi__err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__g_failure_reason
	.p2align	3
stbi__g_failure_reason:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__err
	.addrsig_sym stbi__g_failure_reason