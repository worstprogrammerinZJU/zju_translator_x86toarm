	.text
	.globl	backward_convolutional_layer    # -- Begin function backward_convolutional_layer
	.p2align	4, 0x90
backward_convolutional_layer:           # @backward_convolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
	leaq	120(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rcx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	movl	(%rcx), %eax
	cltd
	idivl	4(%rcx)
	movl	%eax, -36(%rbp)
	movl	8(%rcx), %eax
	imull	8(%rcx), %eax
	imull	12(%rcx), %eax
	cltd
	idivl	4(%rcx)
	movl	%eax, %ecx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -40(%rbp)
	movl	16(%rax), %ecx
	imull	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	100(%rax), %edi
	movl	24(%rax), %esi
	imull	28(%rax), %esi
	movl	96(%rax), %edx
	movq	32(%rax), %rcx
	callq	gradient_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-96(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 88(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-104(%rbp), %rdx                # 8-byte Reload
	movq	16(%rdx), %rsi
	movq	%rsp, %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	%rsi, 120(%rax)
	movups	(%rdx), %xmm0
	movups	%xmm0, 104(%rax)
	movq	96(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movups	80(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_batchnorm_layer@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	80(%rax), %edi
	movq	32(%rax), %rsi
	movl	28(%rax), %edx
	movl	(%rax), %ecx
	movl	-44(%rbp), %r8d
	callq	backward_bias@PLT
.LBB0_3:
	movl	$0, -28(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	28(%rcx), %eax
	jge	.LBB0_20
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, -32(%rbp)
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-32(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_18
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	32(%rsi), %rcx
	movl	-28(%rbp), %edx
	imull	4(%rsi), %edx
	addl	-32(%rbp), %edx
	imull	-36(%rbp), %edx
	imull	-44(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rsi), %rcx
	movl	-32(%rbp), %eax
	imull	48(%rsi), %eax
	cltd
	idivl	4(%rsi)
	movl	%eax, %edx
	movq	-104(%rbp), %rax                # 8-byte Reload
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rcx
	movl	-28(%rbp), %eax
	imull	4(%rsi), %eax
	addl	-32(%rbp), %eax
	imull	12(%rsi), %eax
	cltd
	idivl	4(%rsi)
	movl	%eax, %edx
	movq	-104(%rbp), %rax                # 8-byte Reload
	imull	52(%rsi), %edx
	imull	56(%rsi), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rax), %rcx
	movl	-28(%rbp), %eax
	imull	4(%rsi), %eax
	addl	-32(%rbp), %eax
	imull	12(%rsi), %eax
	cltd
	idivl	4(%rsi)
	movl	%eax, %edx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	imull	52(%rax), %edx
	imull	56(%rax), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	cmpl	$1, 8(%rax)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-80(%rbp), %rdi
	movl	12(%rcx), %eax
	cltd
	idivl	4(%rcx)
	movl	%eax, %esi
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	52(%rax), %edx
	movl	56(%rax), %ecx
	movl	8(%rax), %r8d
	movl	76(%rax), %r9d
	movl	72(%rax), %r10d
	movq	-64(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	im2col_cpu@PLT
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r15
	movl	-44(%rbp), %r14d
	movq	-64(%rbp), %rbx
	movl	-44(%rbp), %r11d
	movq	-72(%rbp), %r10
	movl	-40(%rbp), %eax
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
                                        # kill: def $ecx killed $eax
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 16(%rax)
	je	.LBB0_16
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	64(%rsi), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movl	-32(%rbp), %eax
	imull	48(%rsi), %eax
	cltd
	idivl	4(%rsi)
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movl	%eax, %esi
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movq	32(%rax), %rdx
	movl	-28(%rbp), %esi
	imull	4(%rax), %esi
	addl	-32(%rbp), %esi
	imull	-36(%rbp), %esi
	imull	-44(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$1, 8(%rax)
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %r15
	movl	-40(%rbp), %r14d
	movq	-64(%rbp), %rbx
	movl	-44(%rbp), %r11d
	movq	-72(%rbp), %r10
	movl	-44(%rbp), %eax
	movl	$1, %r9d
	xorl	%esi, %esi
	movl	%r9d, %edi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
                                        # kill: def $ecx killed $eax
	movq	-96(%rbp), %rax                 # 8-byte Reload
	cmpl	$1, 8(%rax)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rdi
	movl	12(%rcx), %eax
	cltd
	idivl	4(%rcx)
	movl	%eax, %esi
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	52(%rax), %edx
	movl	56(%rax), %ecx
	movl	8(%rax), %r8d
	movl	76(%rax), %r9d
	movl	72(%rax), %r10d
	movq	-88(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	col2im_cpu@PLT
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_4
.LBB0_20:
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym backward_batchnorm_layer
	.addrsig_sym backward_bias
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym col2im_cpu