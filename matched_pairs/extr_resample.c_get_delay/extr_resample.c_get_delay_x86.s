	.text
	.p2align	4, 0x90                         # -- Begin function get_delay
get_delay:                              # @get_delay
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	-28(%rbp), %rax
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	-28(%rbp), %rax
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	imull	8(%rax), %edx
	movq	-24(%rbp), %rax
	imull	4(%rax), %edx
	callq	av_rescale@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_delay
	.addrsig_sym av_rescale