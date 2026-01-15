	.text
	.globl	forward_network                 # -- Begin function forward_network
	.p2align	4, 0x90
forward_network:                        # @forward_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-44(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rsi
	leaq	-88(%rbp), %rdi
	movl	$40, %edx
	callq	memcpy@PLT
	cmpq	$0, -56(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-88(%rbp), %edi
	imull	-84(%rbp), %edi
	movq	-56(%rbp), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movups	-40(%rbp), %xmm0
	movups	-24(%rbp), %xmm1
	movq	%rsp, %rcx
	movups	%xmm1, 56(%rcx)
	movups	%xmm0, 40(%rcx)
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rcx)
	movups	-88(%rbp), %xmm0
	movups	-72(%rbp), %xmm1
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	callq	*%rax
	movl	-80(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-8(%rbp), %rdi
	callq	calc_network_cost@PLT
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym calc_network_cost