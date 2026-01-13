	.text
	.p2align	4, 0x90                         # -- Begin function get_workspace_size
get_workspace_size:                     # @get_workspace_size
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rcx
	movq	32(%rcx), %rax
	imulq	(%rcx), %rax
	imulq	8(%rcx), %rax
	imulq	8(%rcx), %rax
	imulq	16(%rcx), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	24(%rcx)
	shlq	$2, %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_workspace_size