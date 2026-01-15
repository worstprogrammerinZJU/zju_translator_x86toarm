	.text
	.globl	decContextClearStatus           # -- Begin function decContextClearStatus
	.p2align	4, 0x90
decContextClearStatus:                  # @decContextClearStatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig