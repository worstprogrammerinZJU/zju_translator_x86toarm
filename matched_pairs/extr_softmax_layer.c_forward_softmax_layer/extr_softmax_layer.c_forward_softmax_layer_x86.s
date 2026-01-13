	.text
	.globl	forward_softmax_layer           # -- Begin function forward_softmax_layer
	.p2align	4, 0x90
forward_softmax_layer:                  # @forward_softmax_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, 48(%rax)
	je	.LBB0_6
# %bb.1:
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movq	48(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	48(%rax), %rcx
	movq	8(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rdi
	movl	-28(%rbp), %esi
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	movl	44(%rax), %r10d
	movq	32(%rax), %rax
	movslq	-24(%rbp), %r8
	addq	%r8, %rax
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	$1, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	softmax_cpu@PLT
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movq	-40(%rbp), %r9                  # 8-byte Reload
	movq	-8(%rbp), %rdi
	movl	4(%r9), %eax
	cltd
	idivl	8(%r9)
	movl	%eax, %esi
	movl	(%r9), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	4(%r9), %ecx
	movl	8(%r9), %r8d
	movl	4(%r9), %eax
	cltd
	idivl	8(%r9)
	movl	-44(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %r9d
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	44(%rax), %r10d
	movq	32(%rax), %rax
	movl	$1, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	softmax_cpu@PLT
.LBB0_7:
	cmpq	$0, -16(%rbp)
	je	.LBB0_10
# %bb.8:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, 40(%rax)
	jne	.LBB0_10
# %bb.9:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rdx
	movl	24(%rax), %ecx
	movl	12(%rax), %r8d
	callq	softmax_x_ent_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	callq	sum_array@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
.LBB0_10:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym softmax_cpu
	.addrsig_sym softmax_x_ent_cpu
	.addrsig_sym sum_array