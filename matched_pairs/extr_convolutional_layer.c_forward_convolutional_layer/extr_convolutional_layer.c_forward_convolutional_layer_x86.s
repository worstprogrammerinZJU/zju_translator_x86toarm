	.text
	.globl	forward_convolutional_layer     # -- Begin function forward_convolutional_layer
	.p2align	4, 0x90
forward_convolutional_layer:            # @forward_convolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movq	8(%rax), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 72(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	16(%rcx), %rdi
	movl	24(%rcx), %esi
	movl	28(%rcx), %eax
	cltd
	idivl	32(%rcx)
	movl	%eax, %edx
	movq	-104(%rbp), %rax                # 8-byte Reload
	imull	36(%rax), %edx
	imull	36(%rax), %edx
	movl	112(%rax), %ecx
	callq	binarize_weights@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	swap_binary@PLT
                                        # kill: def $ecx killed $eax
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	-40(%rbp), %rdi
	movl	28(%rax), %esi
	imull	40(%rax), %esi
	imull	44(%rax), %esi
	imull	4(%rax), %esi
	movq	48(%rax), %rdx
	callq	binarize_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_2:
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	24(%rcx), %eax
	cltd
	idivl	32(%rcx)
	movl	%eax, -52(%rbp)
	movl	36(%rcx), %eax
	imull	36(%rcx), %eax
	imull	28(%rcx), %eax
	cltd
	idivl	32(%rcx)
	movl	%eax, -56(%rbp)
	movl	56(%rcx), %eax
	imull	60(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-44(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -48(%rbp)
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-48(%rbp), %eax
	cmpl	32(%rcx), %eax
	jge	.LBB0_11
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	16(%rsi), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movl	-48(%rbp), %eax
	imull	64(%rsi), %eax
	cltd
	idivl	32(%rsi)
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rsi), %rax
	movl	-44(%rbp), %ecx
	imull	32(%rsi), %ecx
	addl	-48(%rbp), %ecx
	imull	-60(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %eax
	imull	32(%rsi), %eax
	addl	-48(%rbp), %eax
	imull	28(%rsi), %eax
	cltd
	idivl	32(%rsi)
	movl	%eax, %edx
	movq	-104(%rbp), %rax                # 8-byte Reload
	imull	40(%rax), %edx
	imull	44(%rax), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	cmpl	$1, 36(%rax)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	-96(%rbp), %rdi
	movl	28(%rcx), %eax
	cltd
	idivl	32(%rcx)
	movl	%eax, %esi
	movq	-104(%rbp), %rax                # 8-byte Reload
	movl	40(%rax), %edx
	movl	44(%rax), %ecx
	movl	36(%rax), %r8d
	movl	108(%rax), %r9d
	movl	104(%rax), %r10d
	movq	-80(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	im2col_cpu@PLT
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-52(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movq	-72(%rbp), %r15
	movl	-56(%rbp), %r14d
	movq	-80(%rbp), %rbx
	movl	-60(%rbp), %r11d
	movq	-88(%rbp), %r10
	movl	-60(%rbp), %eax
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
	callq	gemm@PLT
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_13:
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 96(%rax)
	je	.LBB0_15
# %bb.14:
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	112(%rcx), %rdx
	movq	%rsp, %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	%rdx, 112(%rax)
	movups	96(%rcx), %xmm0
	movups	%xmm0, 96(%rax)
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
	callq	forward_batchnorm_layer@PLT
	jmp	.LBB0_16
.LBB0_15:
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	movl	92(%rax), %esi
	movl	4(%rax), %edx
	movl	24(%rax), %ecx
	movl	60(%rax), %r8d
	imull	56(%rax), %r8d
	callq	add_bias@PLT
.LBB0_16:
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	88(%rax), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 80(%rax)
	jne	.LBB0_18
# %bb.17:
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 72(%rax)
	je	.LBB0_19
.LBB0_18:
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	swap_binary@PLT
.LBB0_19:
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym binarize_weights
	.addrsig_sym swap_binary
	.addrsig_sym binarize_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array