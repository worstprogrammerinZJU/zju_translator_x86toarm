	.text
	.p2align	4, 0x90                         # -- Begin function stack_init
stack_init:                             # @stack_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movl	ALIGNMENT(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ALIGNMENT
	.p2align	2
ALIGNMENT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_init
	.addrsig_sym ALIGNMENT