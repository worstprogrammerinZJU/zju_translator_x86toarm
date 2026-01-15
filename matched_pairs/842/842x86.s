	.text
	.p2align	4, 0x90                         # -- Begin function align_round_up
align_round_up:                         # @align_round_up
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	ALIGNMENT(%rip), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movslq	ALIGNMENT(%rip), %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movslq	ALIGNMENT(%rip), %rcx
	imulq	%rcx, %rax
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
	.addrsig_sym align_round_up
	.addrsig_sym ALIGNMENT