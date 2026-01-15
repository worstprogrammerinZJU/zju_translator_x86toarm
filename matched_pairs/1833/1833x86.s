	.text
	.p2align	4, 0x90                         # -- Begin function make_ast
make_ast:                               # @make_ast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$4, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rax)
	movl	source_loc(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	source_loc
	.p2align	2
source_loc:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_ast
	.addrsig_sym malloc
	.addrsig_sym source_loc