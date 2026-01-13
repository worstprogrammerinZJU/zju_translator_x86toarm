	.text
	.globl	parse_l2norm                    # -- Begin function parse_l2norm
	.p2align	4, 0x90
parse_l2norm:                           # @parse_l2norm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	16(%rax), %esi
	movl	12(%rax), %edx
	callq	make_l2norm_layer@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	8(%rcx), %edx
	movl	%edx, 16(%rdi)
	movl	%edx, 20(%rdi)
	movl	4(%rcx), %edx
	movl	%edx, 8(%rdi)
	movl	%edx, 12(%rdi)
	movl	(%rcx), %ecx
	movl	%ecx, (%rdi)
	movl	%ecx, 4(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_l2norm_layer