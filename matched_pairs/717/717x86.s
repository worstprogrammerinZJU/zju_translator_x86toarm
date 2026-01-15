	.text
	.globl	backward_deconvolutional_layer  # -- Begin function backward_deconvolutional_layer
	.p2align	4, 0x90
backward_deconvolutional_layer:         # @backward_deconvolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
	leaq	120(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movl	100(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	96(%rax), %edx
	movq	72(%rax), %rcx
	callq	gradient_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-112(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 88(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	16(%rdx), %rsi
	movq	%rsp, %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
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
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	80(%rax), %edi
	movq	72(%rax), %rsi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	movl	12(%rax), %r8d
	imull	16(%rax), %r8d
	callq	backward_bias@PLT
.LBB0_3:
	movl	$0, -28(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	20(%rax), %edx
	movl	%edx, -32(%rbp)
	movl	24(%rax), %edx
	imull	24(%rax), %edx
	imull	8(%rax), %edx
	movl	%edx, -36(%rbp)
	movl	28(%rax), %edx
	imull	32(%rax), %edx
	movl	%edx, -40(%rbp)
	movq	(%rcx), %rdx
	movl	-28(%rbp), %esi
	imull	-32(%rbp), %esi
	imull	-40(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	72(%rax), %rdi
	movl	-28(%rbp), %ecx
	imull	(%rax), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movl	64(%rax), %esi
	movl	16(%rax), %edx
	movl	12(%rax), %ecx
	movl	24(%rax), %r8d
	movl	60(%rax), %r9d
	movl	56(%rax), %r10d
	movq	-56(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	im2col_cpu@PLT
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %r15
	movl	-40(%rbp), %r14d
	movq	-56(%rbp), %rbx
	movl	-40(%rbp), %r11d
	movq	-64(%rbp), %r10
	movl	-36(%rbp), %eax
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
	callq	gemm_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-120(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 16(%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	20(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	28(%rcx), %edx
	imull	32(%rcx), %edx
	movl	%edx, -72(%rbp)
	movl	24(%rcx), %edx
	imull	24(%rcx), %edx
	imull	8(%rcx), %edx
	movl	%edx, -76(%rbp)
	movq	48(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	imull	-72(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	-88(%rbp), %r15
	movl	-76(%rbp), %r14d
	movq	-96(%rbp), %rbx
	movl	-72(%rbp), %r11d
	movq	-104(%rbp), %r10
	movl	-72(%rbp), %eax
	xorl	%esi, %esi
	movl	$1, %r9d
	movl	%esi, %edi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm_cpu@PLT
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_4
.LBB0_9:
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
	.addrsig_sym gemm_cpu