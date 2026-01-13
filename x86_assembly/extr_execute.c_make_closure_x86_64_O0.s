	.text
	.p2align	4, 0x90                         # -- Begin function make_closure
make_closure:                           # @make_closure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	frame_get_level@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	stack_block@PLT
	movq	%rax, -48(%rbp)
	movl	-32(%rbp), %eax
	andl	ARG_NEWCLOSURE(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movl	-32(%rbp), %eax
	movl	ARG_NEWCLOSURE(%rip), %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ARG_NEWCLOSURE
	.p2align	2
ARG_NEWCLOSURE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_closure
	.addrsig_sym frame_get_level
	.addrsig_sym stack_block
	.addrsig_sym assert
	.addrsig_sym ARG_NEWCLOSURE