	.text
	.globl	forward_local_layer             # -- Begin function forward_local_layer
	.p2align	4, 0x90
forward_local_layer:                    # @forward_local_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	%rdi, -40(%rbp)
	movl	%esi, -32(%rbp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	local_out_height@PLT
	movl	%eax, %ecx
	movq	-128(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -44(%rbp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	local_out_width@PLT
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-128(%rbp), %rdx                # 8-byte Reload
	movl	4(%rdx), %edi
	movl	56(%rdx), %esi
	movq	8(%rdx), %rcx
	movl	-52(%rbp), %eax
	imull	4(%rdx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -52(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	16(%rax), %edx
	imull	20(%rax), %edx
	imull	24(%rax), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	24(%rax), %esi
	movl	20(%rax), %edx
	movl	16(%rax), %ecx
	movl	28(%rax), %r8d
	movl	52(%rax), %r9d
	movl	48(%rax), %r10d
	movl	-32(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	im2col_cpu@PLT
	movq	-128(%rbp), %rdx                # 8-byte Reload
	movq	8(%rdx), %rax
	movl	-52(%rbp), %ecx
	imull	4(%rdx), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -56(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	32(%rcx), %rax
	movl	-56(%rbp), %edx
	imull	28(%rcx), %edx
	imull	28(%rcx), %edx
	imull	24(%rcx), %edx
	imull	40(%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	-32(%rbp), %eax
	addl	-56(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movslq	-56(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	40(%rcx), %eax
	movl	%eax, -108(%rbp)
	movl	$1, -112(%rbp)
	movl	28(%rcx), %eax
	imull	28(%rcx), %eax
	imull	24(%rcx), %eax
	movl	%eax, -116(%rbp)
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-88(%rbp), %r15
	movl	-116(%rbp), %r14d
	movq	-96(%rbp), %rbx
	movl	-60(%rbp), %r11d
	movq	-104(%rbp), %r10
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
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_5
.LBB0_12:
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	movl	4(%rax), %esi
	imull	(%rax), %esi
	movl	44(%rax), %edx
	callq	activate_array@PLT
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_out_height
	.addrsig_sym local_out_width
	.addrsig_sym copy_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym activate_array