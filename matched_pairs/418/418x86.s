	.text
	.p2align	4, 0x90                         # -- Begin function make_macro_token
make_macro_token:                       # @make_macro_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	TMACRO_PARAM(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TMACRO_PARAM
	.p2align	2
TMACRO_PARAM:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_macro_token
	.addrsig_sym malloc
	.addrsig_sym TMACRO_PARAM